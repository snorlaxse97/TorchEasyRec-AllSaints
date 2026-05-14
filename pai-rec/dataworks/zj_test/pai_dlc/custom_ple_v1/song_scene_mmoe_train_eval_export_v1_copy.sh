
dlc submit pytorchjob \
    --name=song_scene_mmoe_train_export_v1 \
    --command='set -e
        pip install https://tzrec.oss-cn-beijing.aliyuncs.com/release/nightly/tzrec-0.7.8%2B20250415.ae60098-py2.py3-none-any.whl
        ODPS_ENDPOINT=http://service.cn-shenzhen-vpc.maxcompute.aliyun-inc.com/api \
        torchrun --master_addr=$MASTER_ADDR --master_port=$MASTER_PORT \
        --nnodes=$WORLD_SIZE --nproc-per-node=$NPROC_PER_NODE --node_rank=$RANK \
        -m tzrec.train_eval \
        --pipeline_config_path /mnt/data/deploy/song_scene_v1/song_scene_v1.config \
        --train_input_path odps://dws_rec/tables/song_scene_config_pyfg_encoded_shuffled_30d_v1/p_date=${train_ymd} \
        --eval_input_path odps://dws_rec/tables/song_scene_config_pyfg_encoded_v1_handle_scene_weight/p_date=${eval_ymd} \
        --model_dir /mnt/data/deploy/song_scene_v1/${train_ymd} 

        INPUT_TILE=2 \
        ODPS_ENDPOINT=http://service.cn-shenzhen-vpc.maxcompute.aliyun-inc.com/api \
        torchrun --master_addr=$MASTER_ADDR --master_port=$MASTER_PORT \
        --nnodes=$WORLD_SIZE --nproc-per-node=$NPROC_PER_NODE --node_rank=$RANK \
        -m tzrec.export \
        --pipeline_config_path /mnt/data/deploy/song_scene_v1/${train_ymd}/pipeline.config \
        --export_dir /mnt/data/deploy/song_scene_v1/${train_ymd}/export/final_with_fg' \
    --data_sources=d-81zk97dtokoya6z2rw \
    --workspace_id=175614 \
    --priority=1 \
    --job_max_running_time_minutes=43200 \
    --workers=1 \
    --worker_image=dsw-registry-vpc.cn-shenzhen.cr.aliyuncs.com/pai/torcheasyrec:0.7.0-pytorch2.6.0-gpu-py311-cu124-ubuntu22.04 \
    --worker_spec=ecs.gn7i-c8g1.2xlarge \
    --driver=535.161.08 \
    --enable_credential=true \
    --disable_ecs_stock_check=true