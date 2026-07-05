#!/bin/bash

# 配置参数
GPU_ID=0                # 监控哪块显卡
LOG_FILE="test_mvtec_gpu_usage.log" # 显存采样原始数据
RESULT_FILE="test_mvtec_memory_increase.txt"
INTERVAL=0.1            # 采样频率（秒），越小越精确但CPU占用越高

# 1. 获取程序运行前的初始显存占用 (MiB)
BASE_MEM=$(nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits -i $GPU_ID)

echo "程序启动前显存: ${BASE_MEM} MiB"

# 2. 启动目标程序（请替换为你自己的命令），并将其放入后台
# 这里以 python train.py 为例
export CUDA_VISIBLE_DEVICES=${GPU_ID}

python test.py --mode zero_shot --dataset mvtec \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--save_path ./results/zero_shot/test_time_mvtec_rethink_zsad_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_visa_rethink_zsad_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518 &
APP_PID=$!

# 3. 在程序运行期间循环记录显存峰值
MAX_MEM=0

while kill -0 $APP_PID 2>/dev/null; do
    # 获取当前显存
    CURRENT_MEM=$(nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits -i $GPU_ID)

    # 更新最大值
    if [ "$CURRENT_MEM" -gt "$MAX_MEM" ]; then
        MAX_MEM=$CURRENT_MEM
    fi

    sleep $INTERVAL
done

# 4. 计算增加量
INCREASE=$((MAX_MEM - BASE_MEM))

# 5. 保存结果
echo "--- 统计结果 ---" | tee $RESULT_FILE
echo "初始显存: ${BASE_MEM} MiB" | tee -a $RESULT_FILE
echo "运行期间最高显存: ${MAX_MEM} MiB" | tee -a $RESULT_FILE
echo "显存最大增加量: ${INCREASE} MiB" | tee -a $RESULT_FILE

echo "结果已保存至 $RESULT_FILE"