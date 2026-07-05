#device=2
#
#LOG=${save_dir}"res.log"
#echo ${LOG}
#depth=(9)
#n_ctx=(12)
#t_n_ctx=(4)
#for i in "${!depth[@]}";do
#    for j in "${!n_ctx[@]}";do
#        base_dir= trained_on_mvtecad
#        save_dir=./checkpoints/${base_dir}/
#        CUDA_VISIBLE_DEVICES=${device} python test.py --dataset visa \
#        --data_path /home/dell/wgp/datasets/VisA --save_path ./results/${base_dir}/zero_shot \
#        --checkpoint_path /home/dell/wgp3/FAPrompt/FAPrompt-20260311T120841Z-3-001/FAPrompt/train_on_mvtecad.pth\
#         --features_list 6 12 18 24 --image_size 518 --seed 111 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]} --metrics image-pixel-level
#    wait
#    done
#done



#device=3
#
#LOG=${save_dir}"res.log"
#echo ${LOG}
#depth=(9)
#n_ctx=(12)
#t_n_ctx=(4)
#for i in "${!depth[@]}";do
#    for j in "${!n_ctx[@]}";do
#        base_dir= trained_on_visa
#        save_dir=./checkpoints/${base_dir}/
#        CUDA_VISIBLE_DEVICES=${device} python test.py --dataset mvtecad \
#        --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection --save_path ./results/${base_dir}/zero_shot \
#        --checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_visa/epoch_15.pth \
#         --features_list 6 12 18 24 --image_size 518 --seed 111 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]} --metrics image-pixel-level
#    wait
#    done
#done


device=2
LOG=${save_dir}"res.log"
echo ${LOG}
depth=(9)
n_ctx=(12)
t_n_ctx=(4)
for i in "${!depth[@]}";do
    for j in "${!n_ctx[@]}";do
        base_dir= trained_on_mvtecad
        save_dir=./checkpoints/${base_dir}/
        CUDA_VISIBLE_DEVICES=${device} python test.py --dataset visa \
        --data_path /home/dell/wgp/datasets/VisA --save_path ./results/${base_dir}/zero_shot \
        --checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtecad/epoch_15.pth \
         --features_list 6 12 18 24 --image_size 518 --seed 111 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]} --metrics image-pixel-level
    wait
    done
done

# BrainMRI_anomaly_detection brainmri2
# HeadCT headct2
# SDD SDD
# AITEX AITEX
# elpv elpv
# Brain_MRI Brain_MRI  LAG LAG
# mvtecad_anomaly_detection/mvtecad mvtecad
# visa_anomaly_detection/visa visa
# DAGM_anomaly_detection DAGM
# br35_anomaly_detection br35
# ClinicDB_anomaly_detection, ColonDB, EndoTect, Kvasir colon
# covid19_anomaly_detection chest
# ISBI_anomaly_detection ISBI
# tn3k thyroid

------------------------------------------------------------------------------------------------------------------------
#device=2
#LOG=${save_dir}"res.log"
#echo ${LOG}
#depth=(9)
#n_ctx=(12)
#t_n_ctx=(4)
#for i in "${!depth[@]}";do
#    for j in "${!n_ctx[@]}";do
#        base_dir= trained_on_visa_original_seed_42
#        save_dir=./checkpoints/${base_dir}/
#        CUDA_VISIBLE_DEVICES=${device} python test.py --dataset mvtec \
#        --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection --save_path ./results/mvtec_${base_dir}/zero_shot \
#        --checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/${base_dir}/epoch_15.pth \
#         --features_list 6 12 18 24 --image_size 518 --seed 42 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]} --metrics image-pixel-level
#    wait
#    done
#done
#
#
#device=0
#LOG=${save_dir}"res.log"
#echo ${LOG}
#depth=(9)
#n_ctx=(12)
#t_n_ctx=(4)
#for i in "${!depth[@]}";do
#    for j in "${!n_ctx[@]}";do
#        base_dir= trained_on_mvtec_original_seed_42
#        save_dir=./checkpoints/${base_dir}/
#        CUDA_VISIBLE_DEVICES=${device} python test.py --dataset visa \
#        --data_path /home/dell/wgp/datasets/VisA --save_path ./results/visa_${base_dir}/zero_shot \
#        --checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/${base_dir}/epoch_15.pth \
#         --features_list 6 12 18 24 --image_size 518 --seed 42 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]} --metrics image-pixel-level
#    wait
#    done
#done

CUDA_VISIBLE_DEVICES=0
python test.py --dataset mvtec \
--data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--save_path ./results/mvtec_trained_on_visa_original_seed_111/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_visa_original_seed_111/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

CUDA_VISIBLE_DEVICES=1
python test.py --dataset visa \
--data_path /home/dell/wgp/datasets/VisA \
--save_path ./results/visa_trained_on_mvtec_original_seed_111/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_original_seed_111/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level






CUDA_VISIBLE_DEVICES=2
python test.py --dataset mvtec \
--data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--save_path ./results/mvtec_trained_on_visa_original_seed_42/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_visa_original_seed_42/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 42 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

CUDA_VISIBLE_DEVICES=3
python test.py --dataset visa \
--data_path /home/dell/wgp/datasets/VisA \
--save_path ./results/visa_trained_on_mvtec_original_seed_42/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_original_seed_42/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 42 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level





CUDA_VISIBLE_DEVICES=0
python test.py --dataset mvtec \
--data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--save_path ./results/mvtec_trained_on_visa_original_seed_0/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_visa_original_seed_0/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 0 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

CUDA_VISIBLE_DEVICES=1
python test.py --dataset visa \
--data_path /home/dell/wgp/datasets/VisA \
--save_path ./results/visa_trained_on_mvtec_original_seed_0/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_original_seed_0/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 0 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level



-----------------------------------------------------------------------------------------------------------------
export CUDA_VISIBLE_DEVICES=0
python test.py --dataset mvtec \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--save_path ./results/mvtec_trained_on_visa_rethink_zsad_seed_111/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_visa_rethink_zsad_seed_111/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=1
python test.py --dataset visa \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--save_path ./results/visa_trained_on_mvtec_rethink_zsad_seed_111/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_rethink_zsad_seed_111/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level






export CUDA_VISIBLE_DEVICES=2
python test.py --dataset mvtec \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--save_path ./results/mvtec_trained_on_visa_rethink_zsad_seed_42/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_visa_rethink_zsad_seed_42/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 42 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=3
python test.py --dataset visa \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--save_path ./results/visa_trained_on_mvtec_rethink_zsad_seed_42/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_rethink_zsad_seed_42/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 42 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level







export CUDA_VISIBLE_DEVICES=0
python test.py --dataset mvtec \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--save_path ./results/mvtec_trained_on_visa_rethink_zsad_seed_0/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_visa_rethink_zsad_seed_0/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 0 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=1
python test.py --dataset visa \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--save_path ./results/visa_trained_on_mvtec_rethink_zsad_seed_0/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_rethink_zsad_seed_0/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 0 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level






########################## wfdd  ksdd2  dtd #################################################
export CUDA_VISIBLE_DEVICES=0
python test.py --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--save_path ./results/wfdd_trained_on_mvtec_rethink_zsad_seed_0/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_rethink_zsad_seed_0/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 0 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=1
python test.py --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--save_path ./results/dtd_trained_on_mvtec_rethink_zsad_seed_0/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_rethink_zsad_seed_0/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 0 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=2
python test.py --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--save_path ./results/ksdd2_trained_on_mvtec_rethink_zsad_seed_0/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_rethink_zsad_seed_0/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 0 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level







export CUDA_VISIBLE_DEVICES=3
python test.py --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--save_path ./results/wfdd_trained_on_mvtec_rethink_zsad_seed_42/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_rethink_zsad_seed_42/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 42 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=0
python test.py --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--save_path ./results/dtd_trained_on_mvtec_rethink_zsad_seed_42/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_rethink_zsad_seed_42/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 42 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=3
python test.py --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--save_path ./results/ksdd2_trained_on_mvtec_rethink_zsad_seed_42/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_rethink_zsad_seed_42/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 42 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level







export CUDA_VISIBLE_DEVICES=0
python test.py --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--save_path ./results/wfdd_trained_on_mvtec_rethink_zsad_seed_111/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_rethink_zsad_seed_111/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=1
python test.py --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--save_path ./results/dtd_trained_on_mvtec_rethink_zsad_seed_111/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_rethink_zsad_seed_111/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=2
python test.py --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--save_path ./results/ksdd2_trained_on_mvtec_rethink_zsad_seed_111/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_rethink_zsad_seed_111/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level



############################ original wfdd  ksdd2  dtd  ################################
export CUDA_VISIBLE_DEVICES=0
python test.py --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--save_path ./results/wfdd_trained_on_mvtec_original_seed_0/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_original_seed_0/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 0 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=1
python test.py --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--save_path ./results/dtd_trained_on_mvtec_original_seed_0/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_original_seed_0/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 0 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=2
python test.py --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--save_path ./results/ksdd2_trained_on_mvtec_original_seed_0/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_original_seed_0/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 0 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level





export CUDA_VISIBLE_DEVICES=0
python test.py --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--save_path ./results/wfdd_trained_on_mvtec_original_seed_42/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_original_seed_42/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 42 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=3
python test.py --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--save_path ./results/dtd_trained_on_mvtec_original_seed_42/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_original_seed_42/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 42 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=2
python test.py --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--save_path ./results/ksdd2_trained_on_mvtec_original_seed_42/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_original_seed_42/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 42 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level





export CUDA_VISIBLE_DEVICES=0
python test.py --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--save_path ./results/wfdd_trained_on_mvtec_original_seed_111/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_original_seed_111/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=1
python test.py --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--save_path ./results/dtd_trained_on_mvtec_original_seed_111/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_original_seed_111/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level

export CUDA_VISIBLE_DEVICES=2
python test.py --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--save_path ./results/ksdd2_trained_on_mvtec_original_seed_111/zero_shot \
--checkpoint_path /mnt/data3/wgp3/FAPrompt/checkpoints/trained_on_mvtec_original_seed_111/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-pixel-level




