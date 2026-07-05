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

python test.py --save_path ./results/test_time_mvtec_rethink_zsad_seed_0 --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection --batch_size 1 \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/visa_rethink_zsad_seed_0 &
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