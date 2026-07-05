python test.py --dataset visa --data_path ./data/visa \
--ckpt_path /path/to/ckpt/filo_train_on_mvtec.pth \
--grounded_checkpoint /path/to/ckpt/grounding_train_on_mvtec.pth &

python test.py --dataset mvtec --data_path ./data/mvtec \
--ckpt_path /path/to/ckpt/filo_train_on_visa.pth \
--grounded_checkpoint /path/to/ckpt/grounding_train_on_visa.pth &



-------------------------------------------------------------------------------------------------
python test.py --dataset mvtec \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--ckpt_path ./checkpoints/visa_rethink_zsad_seed_111/filo_train_on_visa.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_visa.pth \
--save_path ./results/mvtec_rethink_zsad_seed_111

export CUDA_VISIBLE_DEVICES=0
python test.py --dataset visa \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--ckpt_path ./checkpoints/mvtec_rethink_zsad_seed_111/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/visa_rethink_zsad_seed_111




python test.py --dataset mvtec \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--ckpt_path ./checkpoints/visa_rethink_zsad_seed_42/filo_train_on_visa.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_visa.pth \
--save_path ./results/mvtec_rethink_zsad_seed_42

export CUDA_VISIBLE_DEVICES=1
python test.py --dataset visa \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--ckpt_path ./checkpoints/mvtec_rethink_zsad_seed_42/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/visa_rethink_zsad_seed_42




python test.py --dataset mvtec \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--ckpt_path ./checkpoints/visa_rethink_zsad_seed_0/filo_train_on_visa.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_visa.pth \
--save_path ./results/mvtec_rethink_zsad_seed_0

python test.py --dataset visa \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--ckpt_path ./checkpoints/mvtec_rethink_zsad_seed_0/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/visa_rethink_zsad_seed_0



######################  rethink zsad wfdd ksdd2 dtd ################################
export CUDA_VISIBLE_DEVICES=1
python test.py --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--ckpt_path ./checkpoints/mvtec_rethink_zsad_seed_0/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/wfdd_rethink_zsad_seed_0

export CUDA_VISIBLE_DEVICES=0
python test.py --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--ckpt_path ./checkpoints/mvtec_rethink_zsad_seed_0/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/ksdd2_rethink_zsad_seed_0

export CUDA_VISIBLE_DEVICES=2
python test.py --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--ckpt_path ./checkpoints/mvtec_rethink_zsad_seed_0/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/dtd_rethink_zsad_seed_0





export CUDA_VISIBLE_DEVICES=0
python test.py --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--ckpt_path ./checkpoints/mvtec_rethink_zsad_seed_42/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/wfdd_rethink_zsad_seed_42

export CUDA_VISIBLE_DEVICES=1
python test.py --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--ckpt_path ./checkpoints/mvtec_rethink_zsad_seed_42/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/ksdd2_rethink_zsad_seed_42

export CUDA_VISIBLE_DEVICES=2
python test.py --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--ckpt_path ./checkpoints/mvtec_rethink_zsad_seed_42/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/dtd_rethink_zsad_seed_42




export CUDA_VISIBLE_DEVICES=0
python test.py --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--ckpt_path ./checkpoints/mvtec_rethink_zsad_seed_111/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/wfdd_rethink_zsad_seed_111

export CUDA_VISIBLE_DEVICES=1
python test.py --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--ckpt_path ./checkpoints/mvtec_rethink_zsad_seed_111/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/ksdd2_rethink_zsad_seed_111

export CUDA_VISIBLE_DEVICES=2
python test.py --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--ckpt_path ./checkpoints/mvtec_rethink_zsad_seed_111/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/dtd_rethink_zsad_seed_111



######################  original wfdd ksdd2 dtd ################################
export CUDA_VISIBLE_DEVICES=1
python test.py --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--ckpt_path /home/dell/wgp/FiLo/checkpoints/mvtec_origin_seed_0/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/wfdd_original_seed_0

export CUDA_VISIBLE_DEVICES=0
python test.py --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--ckpt_path /home/dell/wgp/FiLo/checkpoints/mvtec_origin_seed_0/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/ksdd2_original_seed_0

export CUDA_VISIBLE_DEVICES=2
python test.py --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--ckpt_path /home/dell/wgp/FiLo/checkpoints/mvtec_origin_seed_0/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/dtd_original_seed_0




export CUDA_VISIBLE_DEVICES=1
python test.py --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--ckpt_path /home/dell/wgp/FiLo/checkpoints/mvtec_origin_seed_42/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/wfdd_original_seed_42

export CUDA_VISIBLE_DEVICES=0
python test.py --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--ckpt_path /home/dell/wgp/FiLo/checkpoints/mvtec_origin_seed_42/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/ksdd2_original_seed_42

export CUDA_VISIBLE_DEVICES=2
python test.py --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--ckpt_path /home/dell/wgp/FiLo/checkpoints/mvtec_origin_seed_42/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/dtd_original_seed_42





export CUDA_VISIBLE_DEVICES=1
python test.py --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--ckpt_path /home/dell/wgp/FiLo/checkpoints/mvtec_origin_seed_111/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/wfdd_original_seed_111

export CUDA_VISIBLE_DEVICES=0
python test.py --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--ckpt_path /home/dell/wgp/FiLo/checkpoints/mvtec_origin_seed_111/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/ksdd2_original_seed_111

export CUDA_VISIBLE_DEVICES=2
python test.py --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--ckpt_path /home/dell/wgp/FiLo/checkpoints/mvtec_origin_seed_111/filo_train_on_mvtec.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
--save_path ./results/dtd_original_seed_111
















