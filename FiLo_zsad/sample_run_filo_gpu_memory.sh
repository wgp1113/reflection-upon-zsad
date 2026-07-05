#!/bin/bash
#export PYTHONPATH=/home/dell/wgp2/patchcore-uad-back/src
#
#python bin/run_scad.py --gpu 0 --seed 0 --save_patchcore_model \
#--log_group SCAD_IM256-224_WR50_L2-3_P0_D1024-1024_PS3_AN0_S0 \
#--log_project mvtec_UAD_partial_memory results scad -b wideresnet50 \
#-le layer2 -le layer3 --pretrain_embed_dimension 1024 \
#--target_embed_dimension 1024 --anomaly_scorer_num_nn 0 \
#--patchsize 3 sampler -p 0.0 --filter online_ada_agc \
#dataset --resize [256,256] --imagesize [224,224] --train_mode partial \
#-d bottle -d cable -d capsule -d carpet -d grid -d hazelnut \
#-d leather -d  metal_nut -d  pill -d  screw -d tile -d toothbrush \
#-d transistor -d wood -d zipper \
#mvtec ./data/mvtec &

#PID=$!
#
#OUTPUT_FILE="mvtec_max_gpu_memory.txt"
#echo "开始监控进程ID: $PID"
#
## 持续监控，直到程序结束
#max_mem=0
#while ps -p $PID > /dev/null; do
#    mem_used=$(nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits | head -n 1)
#    if [ $mem_used -gt $max_mem ]; then
#        max_mem=$mem_used
#    fi
#    sleep 1 # 每秒查询一次
#done
#
#echo "程序运行结束。"
#echo "GPU最大内存占用: ${max_mem} MiB"
#
#echo "GPU最大内存占用: ${max_mem} MiB" > $OUTPUT_FILE


#perf stat -e fp_arith_inst_retired.all python your_script.py


source /home/dell/anaconda3/etc/profile.d/conda.sh
source ~/.bashrc
#if [ -f ~/.bashrc ]; then
#    source ~/.bashrc
#fi

conda activate wgp_filo
cd ~/wgp/FiLo
export CUDA_VISIBLE_DEVICES=3

#CMD_TO_RUN="python train.py --dataset mvtec --train_data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection --epoch 1 --seed 0 --save_path ./checkpoints/mvtec_seed_0"

#CMD_TO_RUN="python train.py --dataset mvtec --train_data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection --epoch 15 --seed 0 --save_path ./checkpoints/mvtec_seed_0_train"

CMD_TO_RUN="python train.py --dataset visa --train_data_path /home/dell/wgp/datasets/VisA --epoch 15 --seed 0 --save_path ./checkpoints/visa_seed_0_train"

#CMD_TO_RUN="python test.py --dataset mvtec --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection --ckpt_path ./checkpoints/visa_origin_seed_0/filo_train_on_visa.pth --grounded_checkpoint ./grounding_dino/grounding_train_on_visa.pth --save_path ./results/mvtec_seed_0"

#CMD_TO_RUN="python test.py --dataset visa --data_path /home/dell/wgp/datasets/VisA --ckpt_path ./checkpoints/mvtec_origin_seed_0/filo_train_on_mvtec.pth --grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth --save_path ./results/visa_seed_0"


#CMD_TO_RUN="python train.py --dataset visa --train_data_path /home/dell/wgp/datasets/VisA --epoch 15 --seed 0 --save_path ./checkpoints/visa_seed_0"
# 2. 指定要监控的GPU设备ID (0, 1, 2, ...)
GPU_ID=3

# 3. 设置查询频率（秒），可以为小数，例如0.2
POLL_INTERVAL=0.5
# --- 配置区结束 ---


echo "--- GPU Memory Monitor ---"
echo "命令: $CMD_TO_RUN"
echo "监控GPU ID: $GPU_ID"
echo "查询间隔: $POLL_INTERVAL seconds"
echo "--------------------------"

# 步骤 1: 获取程序运行前的基准显存占用 (单位: MiB)
# 使用 --query-gpu=memory.used 来获取已用显存
# 使用 --format=csv,noheader,nounits 来获取纯数字，便于计算
BASELINE_MEM=$(nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits -i $GPU_ID)
echo "程序运行前基准显存: $BASELINE_MEM MiB"

# 初始化峰值记录
PEAK_MEM=$BASELINE_MEM

# 步骤 2: 在后台启动你的程序并获取PID
# 使用 nohup 确保即使关闭终端，程序也能继续运行
nohup $CMD_TO_RUN > 0_train_visa_output.log 2>&1 &
CMD_PID=$!

echo "程序已启动，进程ID (PID): $CMD_PID"
echo "程序输出将被重定向到 command_output.log 文件"
echo "开始监控显存占用..."



# 步骤 3: 循环监控，直到程序进程消失
# `ps -p $CMD_PID` 检查进程是否存在，`>` /dev/null 隐藏其输出
while ps -p $CMD_PID > /dev/null; do
    # 获取当前显存占用
    CURRENT_MEM=$(nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits -i $GPU_ID)

    # 比较当前值与记录的峰值，如果当前值更大，则更新峰值
    # 使用 bc 进行浮点数比较
    if (( $(echo "$CURRENT_MEM > $PEAK_MEM" | bc -l) )); then
        PEAK_MEM=$CURRENT_MEM
    fi

    # 等待指定间隔
    sleep $POLL_INTERVAL
done

echo "--------------------------"
#echo "程序 (PID: $CMD_PID) 已结束。"
echo "--- 最终结果 ---"
echo "基准显存占用: ${BASELINE_MEM} MiB"
echo "运行期间峰值显存占用: ${PEAK_MEM} MiB"
echo "--------------------------------------------------"

# 步骤 4: 计算并报告结果
MEM_INCREASE=$(echo "$PEAK_MEM - $BASELINE_MEM" | bc)
echo "程序本身造成的最大显存增量: ${MEM_INCREASE} MiB"
echo "--------------------------------------------------"

# 可以选择将结果保存到文件
echo "程序最大显存增量: ${MEM_INCREASE} MiB" > 0_train_gpu_visa_increase_result.txt
echo "详细结果已保存到 0_train_gpu_visa_increase_result.txt"