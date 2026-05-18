# Copyright (c) 2024, Alibaba Group;
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#    http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from typing import Any, Dict, List, Optional

import torch
from torch import nn

from tzrec.datasets.utils import Batch
from tzrec.features.feature import BaseFeature
from tzrec.models.multi_task_rank import MultiTaskRank
from tzrec.modules.extraction_net import ExtractionNet
from tzrec.modules.task_tower import TaskTower
from tzrec.modules.utils import div_no_nan
from tzrec.protos.model_pb2 import ModelConfig
from tzrec.protos.models import multi_task_rank_pb2
from tzrec.utils.config_util import config_to_kwargs


class CustomPLE(MultiTaskRank):
    """Progressive Layered Extraction model.

    Args:
        model_config (ModelConfig): an instance of ModelConfig.
        features (list): list of features.
        labels (list): list of label names.
        sample_weights (list): sample weight names.
    """

    def __init__(
        self,
        model_config: ModelConfig,
        features: List[BaseFeature],
        labels: List[str],
        sample_weights: Optional[List[str]] = None,
        **kwargs: Any,
    ) -> None:
        super().__init__(model_config, features, labels, sample_weights, **kwargs)
        assert model_config.WhichOneof("model") == "custom_ple", (
            "invalid model config: %s" % self._model_config.WhichOneof("model")
        )
        assert isinstance(self._model_config, multi_task_rank_pb2.CustomPLE)

        self._task_nums = len(self._model_config.task_towers)
        self._layer_nums = len(self._model_config.extraction_networks)
        
        # Check if uncertainty weighting is enabled (default: True)
        self._use_uncertainty_weighting = getattr(
            self._model_config, "use_uncertainty_weighting", True
        )
        
        # Uncertainty weighting: learnable log variance for each task
        if self._use_uncertainty_weighting:
            self.log_vars = nn.Parameter(torch.zeros(self._task_nums))  # log_σ²
        else:
            self.log_vars = None

        self.init_input()
        self.group_name = self.embedding_group.group_names()[0]
        feature_in = self.embedding_group.group_total_dim(self.group_name)

        self._extraction_nets = nn.ModuleList()
        in_extraction_networks = [feature_in] * self._task_nums
        in_shared_expert = feature_in
        for i, extraction_network_cfg in enumerate(
            self._model_config.extraction_networks
        ):
            if i == self._layer_nums - 1:
                final_flag = True
            else:
                final_flag = False
            extraction_network_cfg = config_to_kwargs(extraction_network_cfg)
            extraction = ExtractionNet(
                in_extraction_networks,
                in_shared_expert,
                final_flag=final_flag,
                **extraction_network_cfg,
            )
            self._extraction_nets.append(extraction)
            output_dims = extraction.output_dim()
            in_extraction_networks = output_dims[:-1]
            in_shared_expert = output_dims[-1]
        self._task_tower = nn.ModuleList()
        for i, tower_cfg in enumerate(self._task_tower_cfgs):
            tower_cfg = config_to_kwargs(tower_cfg)
            mlp = tower_cfg["mlp"] if "mlp" in tower_cfg else None
            self._task_tower.append(
                TaskTower(in_extraction_networks[i], tower_cfg["num_class"], mlp=mlp)
            )

    def predict(self, batch: Batch) -> Dict[str, torch.Tensor]:
        """Forward the model.

        Args:
            batch (Batch): input batch data.

        Return:
            predictions (dict): a dict of predicted result.
        """
        grouped_features = self.build_input(batch)
        net = grouped_features[self.group_name]
        extraction_network_fea = [net] * self._task_nums
        shared_expert_fea = net
        for extraction_net in self._extraction_nets:
            extraction_network_fea, shared_expert_fea = extraction_net(
                extraction_network_fea, shared_expert_fea
            )
        tower_outputs = {}
        for i, task_tower_cfg in enumerate(self._task_tower_cfgs):
            tower_name = task_tower_cfg.tower_name
            tower_output = self._task_tower[i](extraction_network_fea[i])
            tower_outputs[tower_name] = tower_output
        return self._multi_task_output_to_prediction(tower_outputs)

    def loss(
        self, predictions: Dict[str, torch.Tensor], batch: Batch
    ) -> Dict[str, torch.Tensor]:
        """Compute loss with optional uncertainty weighting.
        
        If use_uncertainty_weighting=True (default), applies dynamic loss balancing
        using learnable uncertainty parameters. Otherwise, uses static weights from config.
        """
        # If uncertainty weighting is disabled, use parent class method
        if not self._use_uncertainty_weighting:
            return super().loss(predictions, batch)
        
        # Uncertainty weighting enabled
        losses = {}
        task_losses = []
        
        for task_idx, task_tower_cfg in enumerate(self._task_tower_cfgs):
            tower_name = task_tower_cfg.tower_name
            label_name = task_tower_cfg.label_name
            
            # Compute base loss weight
            if self.has_weight(task_tower_cfg):
                if task_tower_cfg.sample_weight_name:
                    sample_weight = task_tower_cfg.sample_weight_name
                    loss_weight = batch.sample_weights[sample_weight]
                else:
                    loss_weight = torch.Tensor([1.0]).to(
                        batch.labels[label_name].device
                    )

                if task_tower_cfg.HasField("task_space_indicator_label"):
                    in_task_space = (
                        batch.labels[task_tower_cfg.task_space_indicator_label] > 0
                    ).float()
                    loss_weight = loss_weight * (
                        task_tower_cfg.in_task_space_weight * in_task_space
                        + task_tower_cfg.out_task_space_weight * (1 - in_task_space)
                    )

                loss_weight = div_no_nan(loss_weight, torch.mean(loss_weight))
                loss_weight *= task_tower_cfg.weight
            else:
                loss_weight = None

            # Compute task loss
            for loss_cfg in task_tower_cfg.losses:
                task_loss_dict = self._loss_impl(
                    predictions,
                    batch,
                    batch.labels[label_name],
                    loss_weight,
                    loss_cfg,
                    num_class=task_tower_cfg.num_class,
                    suffix=f"_{tower_name}",
                )
                losses.update(task_loss_dict)
                
                # Get the main loss value for uncertainty weighting
                loss_key = list(task_loss_dict.keys())[0]
                task_losses.append(task_loss_dict[loss_key])
        
        # Apply uncertainty weighting
        # Use the first task loss as base to avoid creating new tensors (torch.fx compatible)
        weighted_loss = None
        for task_idx, task_loss in enumerate(task_losses):
            precision = torch.exp(-self.log_vars[task_idx]) # exp(-log_σ²) 或 1/2*log_σ²
            task_weighted = precision * task_loss + self.log_vars[task_idx]  # precision × L + log_σ²   # + log_σ²_i 防止权重无限减小
            if weighted_loss is None:
                weighted_loss = task_weighted
            else:
                weighted_loss = weighted_loss + task_weighted
        
        losses["loss"] = weighted_loss
        losses.update(self._loss_collection)
        
        # Log uncertainty weights for monitoring
        for task_idx, task_tower_cfg in enumerate(self._task_tower_cfgs):
            tower_name = task_tower_cfg.tower_name
            losses[f"uncertainty_weight_{tower_name}"] = torch.exp(-self.log_vars[task_idx])
        
        return losses
