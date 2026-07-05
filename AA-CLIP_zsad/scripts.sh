# training
python train.py --save_path ./ckpt/issue --training_mode full_shot

export CUDA_VISIBLE_DEVICES=3

python train.py --save_path ./checkpoints/mvtec_zsad_common_sense_seed_0 --training_mode full_shot \
--seed 0 \
--dataset MVTec --dataset_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense

python train.py --save_path ./checkpoints/mvtec_zsad_extended_seed_0 --training_mode full_shot \
--seed 0 \
--dataset MVTec --dataset_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended

python train.py --save_path ./checkpoints/visa_zsad_common_sense_seed_0 --training_mode full_shot \
--seed 0 \
--dataset VisA --dataset_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense

python train.py --save_path ./checkpoints/visa_zsad_extended_seed_0 --training_mode full_shot \
--seed 0 \
--dataset VisA --dataset_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended

#原始数据集
python train.py --save_path ./checkpoints/mvtec_origin_seed_0 --training_mode full_shot \
--seed 0 \
--dataset MVTec --dataset_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection

python train.py --save_path ./checkpoints/visa_origin_seed_0 --training_mode full_shot \
--seed 0 \
--dataset VisA --dataset_path /home/dell/wgp/datasets/VisA

# testing
declare -a dataset=(MVTec BTAD MPDD Brain Liver Retina Colon_clinicDB Colon_colonDB Colon_Kvasir Colon_cvc300)
save_path="./ckpt/issue"
for i in "${dataset[@]}"; do
    python test.py --save_path $save_path --dataset $i
done

python test.py --save_path ./results/mvtec_zsad_common_sense_seed_0 --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--checkpoint_path ./checkpoints/visa_zsad_common_sense_seed_0

python test.py --save_path ./results/visa_zsad_common_sense_seed_0 --dataset VisA \
--dataset_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_zsad_common_sense_seed_0

python test.py --save_path ./results/mvtec_zsad_extended_seed_0 --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/visa_zsad_extended_seed_0

python test.py --save_path ./results/visa_zsad_extended_seed_0 --dataset VisA \
--dataset_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_zsad_extended_seed_0


python test.py --save_path ./results/visa_origin --dataset VisA \
--dataset_path /home/dell/wgp/datasets/VisA \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin

python test.py --save_path ./results/mvtec_origin --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/visa_origin


--------------------------------------------------------------

export CUDA_VISIBLE_DEVICES=2
python train.py --save_path ./checkpoints/mvtec_rethink_zsad_seed_111 --training_mode full_shot \
--seed 111 --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection


export CUDA_VISIBLE_DEVICES=3
python train.py --save_path ./checkpoints/visa_rethink_zsad_seed_111 --training_mode full_shot \
--seed 111 --dataset VisA \
--dataset_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa


export CUDA_VISIBLE_DEVICES=0
python train.py --save_path ./checkpoints/mvtec_rethink_zsad_seed_42 --training_mode full_shot \
--seed 42 --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection


export CUDA_VISIBLE_DEVICES=2
python train.py --save_path ./checkpoints/visa_rethink_zsad_seed_42 --training_mode full_shot \
--seed 42 --dataset VisA \
--dataset_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa


export CUDA_VISIBLE_DEVICES=0
python train.py --save_path ./checkpoints/mvtec_rethink_zsad_seed_0 --training_mode full_shot \
--seed 0 --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection


export CUDA_VISIBLE_DEVICES=2
python train.py --save_path ./checkpoints/visa_rethink_zsad_seed_0 --training_mode full_shot \
--seed 0 --dataset VisA \
--dataset_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa

-----------------------------------------------------------------------------------------------
python test.py --save_path ./results/mvtec_rethink_zsad_seed_111 --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/visa_rethink_zsad_seed_111

python test.py --save_path ./results/visa_rethink_zsad_seed_111 --dataset VisA \
--dataset_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_111



python test.py --save_path ./results/mvtec_rethink_zsad_seed_42 --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/visa_rethink_zsad_seed_42

python test.py --save_path ./results/visa_rethink_zsad_seed_42 --dataset VisA \
--dataset_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_42




python test.py --save_path ./results/mvtec_rethink_zsad_seed_0 --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/visa_rethink_zsad_seed_0

python test.py --save_path ./results/visa_rethink_zsad_seed_0 --dataset VisA \
--dataset_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_0



###################### rethink zsad wfdd ksdd2  dtd #################################################
export CUDA_VISIBLE_DEVICES=0
python test.py --save_path ./results/wfdd_rethink_zsad_seed_0 --dataset wfdd \
--dataset_path /home/dell/wgp/datasets/WFDD \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_0

export CUDA_VISIBLE_DEVICES=1
python test.py --save_path ./results/ksdd2_rethink_zsad_seed_0 --dataset ksdd2 \
--dataset_path /home/dell/wgp/datasets/ksdd2 \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_0

export CUDA_VISIBLE_DEVICES=2
python test.py --save_path ./results/dtd_rethink_zsad_seed_0 --dataset dtd \
--dataset_path /home/dell/wgp/datasets/DTD-Synthetic \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_0


export CUDA_VISIBLE_DEVICES=3
python test.py --save_path ./results/wfdd_rethink_zsad_seed_42 --dataset wfdd \
--dataset_path /home/dell/wgp/datasets/WFDD \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_42

export CUDA_VISIBLE_DEVICES=3
python test.py --save_path ./results/ksdd2_rethink_zsad_seed_42 --dataset ksdd2 \
--dataset_path /home/dell/wgp/datasets/ksdd2 \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_42

export CUDA_VISIBLE_DEVICES=3
python test.py --save_path ./results/dtd_rethink_zsad_seed_42 --dataset dtd \
--dataset_path /home/dell/wgp/datasets/DTD-Synthetic \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_42



export CUDA_VISIBLE_DEVICES=3
python test.py --save_path ./results/wfdd_rethink_zsad_seed_111 --dataset wfdd \
--dataset_path /home/dell/wgp/datasets/WFDD \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_111

export CUDA_VISIBLE_DEVICES=3
python test.py --save_path ./results/ksdd2_rethink_zsad_seed_111 --dataset ksdd2 \
--dataset_path /home/dell/wgp/datasets/ksdd2 \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_111

export CUDA_VISIBLE_DEVICES=3
python test.py --save_path ./results/dtd_rethink_zsad_seed_111 --dataset dtd \
--dataset_path /home/dell/wgp/datasets/DTD-Synthetic \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_111


###################### original wfdd ksdd2  dtd #################################################
export CUDA_VISIBLE_DEVICES=0
python test.py --save_path ./results/wfdd_original_seed_0 --dataset wfdd \
--dataset_path /home/dell/wgp/datasets/WFDD \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin_seed_0

export CUDA_VISIBLE_DEVICES=1
python test.py --save_path ./results/ksdd2_original_seed_0 --dataset ksdd2 \
--dataset_path /home/dell/wgp/datasets/ksdd2 \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin_seed_0

export CUDA_VISIBLE_DEVICES=2
python test.py --save_path ./results/dtd_original_seed_0 --dataset dtd \
--dataset_path /home/dell/wgp/datasets/DTD-Synthetic \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin_seed_0






export CUDA_VISIBLE_DEVICES=0
python test.py --save_path ./results/wfdd_original_seed_42 --dataset wfdd \
--dataset_path /home/dell/wgp/datasets/WFDD \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin_seed_42

export CUDA_VISIBLE_DEVICES=1
python test.py --save_path ./results/ksdd2_original_seed_42 --dataset ksdd2 \
--dataset_path /home/dell/wgp/datasets/ksdd2 \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin_seed_42

export CUDA_VISIBLE_DEVICES=2
python test.py --save_path ./results/dtd_original_seed_42 --dataset dtd \
--dataset_path /home/dell/wgp/datasets/DTD-Synthetic \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin_seed_42






export CUDA_VISIBLE_DEVICES=0
python test.py --save_path ./results/wfdd_original_seed_111 --dataset wfdd \
--dataset_path /home/dell/wgp/datasets/WFDD \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin_seed_111

export CUDA_VISIBLE_DEVICES=1
python test.py --save_path ./results/ksdd2_original_seed_111 --dataset ksdd2 \
--dataset_path /home/dell/wgp/datasets/ksdd2 \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin_seed_111

export CUDA_VISIBLE_DEVICES=2
python test.py --save_path ./results/dtd_original_seed_111 --dataset dtd \
--dataset_path /home/dell/wgp/datasets/DTD-Synthetic \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin_seed_111





################################################
export CUDA_VISIBLE_DEVICES=1
python test.py --save_path ./results/wfdd_origin_12_seed_0 --dataset wfdd \
--dataset_path /home/dell/wgp/datasets/WFDD \
--checkpoint_path /mnt/data3/wgp3/AA-CLIP_zsad_12/checkpoints/mvtec_origin_12_seed_0




