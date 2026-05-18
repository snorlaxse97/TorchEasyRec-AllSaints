#!/bin/bash
# 通过检查文件内容验证 proto 编译结果

PROJECT_ROOT="/home/snorlaxse/Code/Github/TorchEasyRec-AllSaints"
PROTO_FILE="$PROJECT_ROOT/tzrec/protos/models/multi_task_rank_pb2.py"

echo "=========================================="
echo "验证 Uncertainty Weighting Proto 编译"
echo "=========================================="
echo ""

# 检查 proto 文件是否存在
if [ ! -f "$PROTO_FILE" ]; then
    echo "✗ Proto 文件不存在: $PROTO_FILE"
    echo ""
    echo "请先编译 proto:"
    echo "  cd $PROJECT_ROOT"
    echo "  python -m grpc_tools.protoc -I. --python_out=. --pyi_out=. \\"
    echo "    tzrec/protos/models/multi_task_rank.proto"
    exit 1
fi

echo "✓ Proto 文件存在: $PROTO_FILE"
echo ""

# 检查文件中是否包含 use_uncertainty_weighting
echo "检查 use_uncertainty_weighting 字段..."
if grep -q "use_uncertainty_weighting" "$PROTO_FILE"; then
    echo "✓ 找到 use_uncertainty_weighting 字段"
    echo ""
    
    # 显示相关代码行
    echo "相关代码片段:"
    grep -A 2 -B 2 "use_uncertainty_weighting" "$PROTO_FILE" | head -20
    echo ""
    
    echo "=========================================="
    echo "✓ Proto 验证通过！"
    echo "=========================================="
    echo ""
    echo "Uncertainty Weighting 功能已就绪"
    echo ""
    echo "使用方式:"
    echo "  1. 默认启用（无需配置）"
    echo "  2. 关闭: use_uncertainty_weighting: false"
    echo "  3. 监控指标: uncertainty_weight_{tower_name}"
    echo ""
    exit 0
else
    echo "✗ 未找到 use_uncertainty_weighting 字段"
    echo ""
    echo "需要重新编译 proto:"
    echo "  cd $PROJECT_ROOT"
    echo "  python -m grpc_tools.protoc -I. --python_out=. --pyi_out=. \\"
    echo "    tzrec/protos/models/multi_task_rank.proto"
    echo ""
    exit 1
fi
