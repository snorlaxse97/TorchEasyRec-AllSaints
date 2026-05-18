# PE-MTL vs UWL 实现对比

## 当前 UWL 实现
```python
class CustomPLE(MultiTaskRank):
    def __init__(...):
        # UWL: 每个任务一个 log variance
        self.log_vars = nn.Parameter(torch.zeros(self._task_nums))
    
    def loss(...):
        weighted_loss = None
        for task_idx, task_loss in enumerate(task_losses):
            # UWL 公式
            precision = torch.exp(-self.log_vars[task_idx])
            task_weighted = precision * task_loss + self.log_vars[task_idx]
            #               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
            #               exp(-log_σ²) × L + log_σ²
            
            if weighted_loss is None:
                weighted_loss = task_weighted
            else:
                weighted_loss = weighted_loss + task_weighted
```

## PE-MTL 简单实现
```python
class CustomPLE_PEMTL(MultiTaskRank):
    def __init__(...):
        # PE-MTL: 每个任务一个权重参数
        self.task_weights = nn.Parameter(torch.ones(self._task_nums))
    
    def loss(...):
        # Softmax 归一化权重
        weights = torch.softmax(self.task_weights, dim=0)
        
        weighted_loss = None
        for task_idx, task_loss in enumerate(task_losses):
            # PE-MTL 公式（简单版）
            task_weighted = weights[task_idx] * task_loss
            #               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
            #               softmax(θ) × L
            
            if weighted_loss is None:
                weighted_loss = task_weighted
            else:
                weighted_loss = weighted_loss + task_weighted
        
        # 记录权重用于监控
        for task_idx, task_tower_cfg in enumerate(self._task_tower_cfgs):
            tower_name = task_tower_cfg.tower_name
            losses[f"pemtl_weight_{tower_name}"] = weights[task_idx]
```

## PE-MTL DWA 实现
```python
class CustomPLE_DWA(MultiTaskRank):
    def __init__(...):
        # DWA: 记录历史损失
        self.prev_losses = None
        self.temperature = 2.0
    
    def loss(...):
        current_losses = torch.stack(task_losses)
        
        if self.prev_losses is None:
            # 第一次迭代，使用均等权重
            weights = torch.ones(self._task_nums) / self._task_nums
        else:
            # 计算损失变化率
            loss_ratios = current_losses / (self.prev_losses + 1e-8)
            
            # DWA 公式
            weights = torch.softmax(loss_ratios / self.temperature, dim=0)
            weights = weights * self._task_nums  # 缩放到平均为1
        
        # 更新历史损失
        self.prev_losses = current_losses.detach()
        
        weighted_loss = None
        for task_idx, task_loss in enumerate(task_losses):
            task_weighted = weights[task_idx] * task_loss
            if weighted_loss is None:
                weighted_loss = task_weighted
            else:
                weighted_loss = weighted_loss + task_weighted
```

## 权重演化对比

### UWL
```
Epoch 0:  log_σ²=[0.0, 0.0]     → weights=[1.0, 1.0]
Epoch 10: log_σ²=[-0.5, 0.8]    → weights=[1.65, 0.45]
Epoch 50: log_σ²=[-0.3, 0.5]    → weights=[1.35, 0.61]
```

### PE-MTL (Softmax)
```
Epoch 0:  θ=[0.0, 0.0]          → weights=[0.5, 0.5]
Epoch 10: θ=[0.8, -0.5]         → weights=[0.69, 0.31]
Epoch 50: θ=[0.5, -0.2]         → weights=[0.62, 0.38]
```

### DWA
```
Epoch 0:  -                     → weights=[0.5, 0.5]
Epoch 10: ratios=[0.6, 1.2]    → weights=[0.35, 0.65]
Epoch 50: ratios=[0.95, 1.05]  → weights=[0.48, 0.52]
```

## 选择建议

| 场景 | 推荐方法 | 原因 |
|------|---------|------|
| 理论严谨性 | UWL | 有贝叶斯理论支持 |
| 权重归一化 | PE-MTL | 权重和为1，易解释 |
| 无额外参数 | DWA | 基于历史损失，无需学习参数 |
| 稳定性优先 | UWL | 有正则化项，更稳定 |
| 快速收敛 | PE-MTL | 简单直接 |

## 混合方案

可以结合两者优点：
```python
# UWL + Softmax 归一化
precision = torch.exp(-self.log_vars)
weights = torch.softmax(precision, dim=0) * self._task_nums
task_weighted = weights[task_idx] * task_loss + self.log_vars[task_idx]
```
