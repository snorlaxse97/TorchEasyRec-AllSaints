#!/bin/bash

# Exit on error
set -e

# Initialize conda for bash shell
echo "[1/7] Initializing conda"
eval "$(conda shell.bash hook)"

# Activate conda environment
echo "[2/7] Activating conda environment: tzrec"
conda activate tzrec

# Change to project directory
echo "[3/7] Changing to project directory"
cd /home/snorlaxse/Code/Github/TorchEasyRec-AllSaints

# Checkout branch
echo "[4/7] Checking out branch: release/v0.7_dev"
git checkout release/v0.7_dev

# Generate protobuf Python files
echo "[5/7] Generating protobuf Python files"
bash scripts/gen_proto_python.sh

# Clean build artifacts
echo "[6/7] Cleaning build artifacts"
rm -rf build/ dist/ *.egg-info

# Build wheel package
echo "[7/7] Building wheel package"
python -m build --wheel

echo "✅ Build completed successfully!"
echo "Wheel package location: dist/"