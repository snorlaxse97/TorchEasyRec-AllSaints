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
from torch.nn import functional as F

from tzrec.modules.mlp import MLP


class PLE(nn.Module):
    """Progressive Layered Extraction module.

    Args:
        in_features (int): in_size of the input.
        expert_mlp (dict): expert MLP module parameters.
        num_shared_expert (int): number of shared experts.
        num_specific_expert (int): number of task-specific experts per task.
        num_task (int): number of tasks.
        num_level (int): number of extraction layers.
        gate_mlp (dict, optional): gate MLP module parameters.
    """

    def __init__(
        self,
        in_features: int,
        expert_mlp: Dict[str, Any],
        num_shared_expert: int,
        num_specific_expert: int,
        num_task: int,
        num_level: int = 1,
        gate_mlp: Optional[Dict[str, Any]] = None,
    ) -> None:
        super().__init__()
        self.num_shared_expert = num_shared_expert
        self.num_specific_expert = num_specific_expert
        self.num_task = num_task
        self.num_level = num_level

        expert_out_dim = MLP(in_features=in_features, **expert_mlp).hidden_units[-1]

        # experts[level][task_idx] where task_idx == num_task means shared
        self.experts = nn.ModuleList()
        for level in range(num_level):
            level_experts = nn.ModuleList()
            cur_in = in_features if level == 0 else expert_out_dim
            for _ in range(num_task):
                level_experts.append(
                    nn.ModuleList(
                        [
                            MLP(in_features=cur_in, **expert_mlp)
                            for _ in range(num_specific_expert)
                        ]
                    )
                )
            level_experts.append(
                nn.ModuleList(
                    [
                        MLP(in_features=cur_in, **expert_mlp)
                        for _ in range(num_shared_expert)
                    ]
                )
            )
            self.experts.append(level_experts)

        # gates[level][task_idx]
        num_gate_experts = num_specific_expert + num_shared_expert
        self.has_gate_mlp = gate_mlp is not None
        self.gates = nn.ModuleList()
        if self.has_gate_mlp:
            self.gate_mlps = nn.ModuleList()
        for level in range(num_level):
            cur_in = in_features if level == 0 else expert_out_dim
            level_gates = nn.ModuleList(
                [nn.Linear(cur_in if not self.has_gate_mlp else
                           MLP(in_features=cur_in, **gate_mlp).hidden_units[-1],
                           num_gate_experts)
                 for _ in range(num_task)]
            )
            self.gates.append(level_gates)
            if self.has_gate_mlp:
                self.gate_mlps.append(
                    nn.ModuleList(
                        [MLP(in_features=cur_in, **gate_mlp) for _ in range(num_task)]
                    )
                )

        self._expert_out_dim = expert_out_dim

    def output_dim(self) -> int:
        """Output dimension of the module."""
        return self._expert_out_dim

    def forward(self, input: torch.Tensor) -> List[torch.Tensor]:
        """Forward the module."""
        # task_inputs[i] holds the input for task i at current level
        task_inputs: List[torch.Tensor] = [input] * self.num_task

        for level in range(self.num_level):
            level_experts = self.experts[level]
            new_task_inputs: List[torch.Tensor] = []

            shared_experts = level_experts[self.num_task]
            shared_feas = torch.stack(
                [e(task_inputs[0]) for e in shared_experts], dim=1
            )

            for t in range(self.num_task):
                specific_feas = torch.stack(
                    [e(task_inputs[t]) for e in level_experts[t]], dim=1
                )
                expert_feas = torch.cat([specific_feas, shared_feas], dim=1)

                gate_in = task_inputs[t]
                if self.has_gate_mlp:
                    gate_in = self.gate_mlps[level][t](gate_in)
                gate = F.softmax(self.gates[level][t](gate_in), dim=1).unsqueeze(1)
                new_task_inputs.append(torch.matmul(gate, expert_feas).squeeze(1))

            task_inputs = new_task_inputs

        return task_inputs
