# tzrec/models/custom_rank_model.py
from typing import Any, Dict, List, Optional

import torch
from torch import nn

from tzrec.datasets.utils import Batch
from tzrec.features.feature import BaseFeature
from tzrec.models.rank_model import RankModel
from tzrec.modules.embedding import EmbeddingGroup
from tzrec.modules.mlp import MLP
from tzrec.protos.model_pb2 import ModelConfig
from tzrec.utils.config_util import config_to_kwargs


class CustomRankModel(RankModel):
    """CustomRankModel.

    Args:
        model_config (ModelConfig): an instance of ModelConfig.
        features (list): list of features.
        labels (list): list of label names.
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
        # 构建EmbeddingGroup
        self.embedding_group = EmbeddingGroup(
            features, list(model_config.feature_groups)
        )
        # 构建MLP
        total_in_dim = sum(self.embedding_group.group_total_dim(n) for n in self.embedding_group.group_names())
        self.mlp = MLP(
            in_features=total_in_dim,
            **config_to_kwargs(self._model_config.mlp),
        )
        final_dim = self.mlp.output_dim()
        self.output_mlp = nn.Linear(final_dim, self._num_class)
        # 初始化其他模块
        # ...


    def predict(self, batch: Batch) -> Dict[str, torch.Tensor]:
        """Forward the model.

        Args:
            batch (Batch): input batch data.

        Return:
            predictions (dict): a dict of predicted result.
        """
        grouped_features = self.embedding_group(
            batch
        )
        features = torch.cat([grouped_features[name] for name in self.embedding_group.group_names()], dim=-1)
        tower_output = self.mlp(features)
        y = self.output_mlp(tower_output)
        # 其他前向推理
        # ...

        return self._output_to_prediction(y)
