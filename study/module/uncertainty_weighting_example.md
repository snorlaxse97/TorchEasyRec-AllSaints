# CustomPLE Uncertainty Weighting 使用说明

## 功能介绍

CustomPLE 模型现已支持 **Uncertainty Weighting** 动态损失加权机制，可以自动学习多任务之间的最优权重平衡。

## 核心原理

基于贝叶斯不确定性估计，为每个任务学习一个可训练的 log variance 参数：

```
weighted_loss = Σ [exp(-log_var_i) * loss_i + log_var_i]
```

- `exp(-log_var_i)` 是任务 i 的动态权重（precision）
- 当任务损失较大时，自动降低该任务权重
- 当任务损失较小时，自动增大该任务权重
- `+ log_var_i` 项防止权重无限减小

## 配置方式

### 方式 1：默认启用（推荐）

不需要任何额外配置，Uncertainty Weighting 默认启用：

```protobuf
model_config {
  model_class: "CustomPLE"
  custom_ple {
    extraction_networks {
      # ... extraction network config
    }
    task_towers {
      tower_name: "ctr"
      label_name: "click"
      # ... other configs
    }
    task_towers {
      tower_name: "cvr"
      label_name: "conversion"
      # ... other configs
    }
  }
}
```

### 方式 2：显式配置

如果需要关闭 Uncertainty Weighting，使用静态权重：

```protobuf
model_config {
  model_class: "CustomPLE"
  custom_ple {
    use_uncertainty_weighting: false  # 关闭动态加权
    extraction_networks {
      # ... extraction network config
    }
    task_towers {
      tower_name: "ctr"
      label_name: "click"
      weight: 1.0  # 使用静态权重
    }
    task_towers {
      tower_name: "cvr"
      label_name: "conversion"
      weight: 2.0  # 使用静态权重
    }
  }
}
```

## 监控指标

训练过程中会自动记录每个任务的动态权重：

- `uncertainty_weight_ctr`: CTR 任务的当前权重
- `uncertainty_weight_cvr`: CVR 任务的当前权重
- `loss`: 总的加权损失

可以通过 TensorBoard 或日志查看权重变化趋势。

## 优势

1. **自动平衡**：无需手动调整任务权重
2. **动态调整**：根据训练过程自动优化
3. **理论支持**：基于贝叶斯不确定性估计
4. **向后兼容**：现有配置无需修改即可使用

## 注意事项

1. Uncertainty Weighting 会引入额外的可学习参数（每个任务一个）
2. 初始权重均为 1.0（log_var 初始化为 0）
3. 如果任务之间差异极大，建议先使用静态权重预训练，再启用动态加权
4. 可以结合 `sample_weight_name` 和 `task_space_indicator_label` 使用

## Proto 定义更新

如果需要重新编译 proto 文件：

```bash
cd TorchEasyRec-AllSaints
# 重新编译 proto
python -m grpc_tools.protoc -I. --python_out=. --grpc_python_out=. tzrec/protos/models/multi_task_rank.proto
```

## 示例对比

### 静态权重（传统方式）
```
Task 1 loss: 0.5, weight: 1.0 → weighted: 0.5
Task 2 loss: 2.0, weight: 1.0 → weighted: 2.0
Total loss: 2.5 (Task 2 主导训练)
```

### Uncertainty Weighting（动态方式）
```
Epoch 1:
  Task 1 loss: 0.5, weight: 1.0 → weighted: 0.5
  Task 2 loss: 2.0, weight: 1.0 → weighted: 2.0
  
Epoch 10:
  Task 1 loss: 0.3, weight: 1.5 → weighted: 0.45
  Task 2 loss: 1.5, weight: 0.7 → weighted: 1.05
  (自动降低 Task 2 权重，平衡训练)
```
