#--------------------------- Use the pre-trained weights we provide ----------------------- 

# test on the MVTec-AD dataset
for i in {1..15};do
python -u test.py --dataset mvtec_zsad_common_sense --data_path ./dataset/mvisa/data \
--checkpoint_path ./my_exps/train_visa_zsad_common_sense/epoch_${i}_group_id_2.pth \
--save_path ./results/mvtec_zsad_common_sense_${i} --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
done


for i in {1..15};do
python -u test.py --dataset mvtec_zsad_common_sense --data_path ./dataset/mvisa/data \
--checkpoint_path ./my_exps/visa_zsad_common_sense/epoch_${i}_group_id_2.pth \
--save_path ./results/mvtec_zsad_common_sense_${i} --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
done






python -u test.py --dataset mvtec --data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--checkpoint_path ./my_exps/visa_zsad_common_sense/epoch_${i}_group_id_2.pth \
--save_path ./results/mvtec_zsad_common_sense_${i} --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

# test on the VisA dataset
(
nohup python -u test.py --dataset visa --data_path ./dataset/mvisa/data \
--checkpoint_path ./vcp_weight/train_mvtec/train_mvtec.pth \
--save_path ./results/test_visa --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 1 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 333 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
) > ./log_test_visa.out 2>&1 &


(
nohup python -u test.py --dataset mvtec_zsad_common_sense --data_path ./dataset/mvisa/data \
--checkpoint_path ./vcp_weight/train_visa/train_visa.pth \
--save_path ./results/test_mvtec --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 1 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 333 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
) > ./log_test_mvtec.out 2>&1 &


# test on the VisA dataset
(
nohup python -u test.py --dataset visa --data_path ./dataset/mvisa/data \
--checkpoint_path ./vcp_weight/train_mvtec/train_mvtec.pth \
--save_path ./results/test_visa --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 1 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 333 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
) > ./log_test_visa.out 2>&1 &



#--------------------------- Use your own trained weights ----------------------- #

# test on the MVTec-AD dataset
#(
#nohup python -u test.py --dataset mvtec --data_path ./dataset/mvisa/data \
#--checkpoint_path ./my_exps/train_visa/epoch_10_group_id_2.pth \
#--save_path ./results/test_mvtec --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
#--prompt_len 2 --deep_prompt_len 1 --device_id 1 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
#--seed 333 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
#) > ./log_test_mvtec.out 2>&1 &

# test on the VisA dataset
#(
#nohup python -u test.py --dataset visa --data_path ./dataset/mvisa/data \
#--checkpoint_path ./my_exps/train_mvtec/epoch_10_group_id_2.pth \
#--save_path ./results/test_visa --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
#--prompt_len 2 --deep_prompt_len 1 --device_id 1 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
#--seed 333 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
#) > ./log_test_visa.out 2>&1 &




-------------------------------------------------------------------------------------------------------
export CUDA_VISIBLE_DEVICES=2
python -u test.py --dataset mvtec_rethink_zsad --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_visa_rethink_zsad_seed_111/epoch_10_group_id_2.pth \
--save_path ./results/mvtec_rethink_zsad_seed_111 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=0
python -u test.py --dataset visa_rethink_zsad --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_rethink_zsad_seed_111/epoch_10_group_id_2.pth \
--save_path ./results/visa_rethink_zsad_seed_111 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336




export CUDA_VISIBLE_DEVICES=1
python -u test.py --dataset mvtec_rethink_zsad --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_visa_rethink_zsad_seed_42/epoch_10_group_id_2.pth \
--save_path ./results/mvtec_rethink_zsad_seed_42 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 42 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=2
python -u test.py --dataset visa_rethink_zsad --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_rethink_zsad_seed_42/epoch_10_group_id_2.pth \
--save_path ./results/visa_rethink_zsad_seed_42 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 42 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336






export CUDA_VISIBLE_DEVICES=0
python -u test.py --dataset mvtec_rethink_zsad --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_visa_rethink_zsad_seed_0/epoch_10_group_id_2.pth \
--save_path ./results/mvtec_rethink_zsad_seed_0 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 0 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=1
python -u test.py --dataset visa_rethink_zsad --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_rethink_zsad_seed_0/epoch_10_group_id_2.pth \
--save_path ./results/visa_rethink_zsad_seed_0 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 0 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336




####################### rethink  zsad  wfdd dtd ksdd2 ##################################
export CUDA_VISIBLE_DEVICES=2
python -u test.py --dataset wfdd --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_rethink_zsad_seed_111/epoch_10_group_id_2.pth \
--save_path ./results/wfdd_rethink_zsad_seed_111 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=0
python -u test.py --dataset dtd --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_rethink_zsad_seed_111/epoch_10_group_id_2.pth \
--save_path ./results/dtd_rethink_zsad_seed_111 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=1
python -u test.py --dataset ksdd2 --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_rethink_zsad_seed_111/epoch_10_group_id_2.pth \
--save_path ./results/ksdd2_rethink_zsad_seed_111 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336





export CUDA_VISIBLE_DEVICES=3
python -u test.py --dataset wfdd --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_rethink_zsad_seed_42/epoch_10_group_id_2.pth \
--save_path ./results/wfdd_rethink_zsad_seed_42 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 42 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=0
python -u test.py --dataset dtd --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_rethink_zsad_seed_42/epoch_10_group_id_2.pth \
--save_path ./results/dtd_rethink_zsad_seed_42 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 42 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=1
python -u test.py --dataset ksdd2 --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_rethink_zsad_seed_42/epoch_10_group_id_2.pth \
--save_path ./results/ksdd2_rethink_zsad_seed_42 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 42 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336






export CUDA_VISIBLE_DEVICES=2
python -u test.py --dataset wfdd --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_rethink_zsad_seed_0/epoch_10_group_id_2.pth \
--save_path ./results/wfdd_rethink_zsad_seed_0 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 0 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=3
python -u test.py --dataset dtd --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_rethink_zsad_seed_0/epoch_10_group_id_2.pth \
--save_path ./results/dtd_rethink_zsad_seed_0 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 0 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=1
python -u test.py --dataset ksdd2 --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_rethink_zsad_seed_0/epoch_10_group_id_2.pth \
--save_path ./results/ksdd2_rethink_zsad_seed_0 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 0 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336


####################### original  wfdd dtd ksdd2 ##################################
export CUDA_VISIBLE_DEVICES=0
python -u test.py --dataset wfdd --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path /home/dell/wgp/VCP-CLIP/my_exps/train_mvtec_origin_seed_0/epoch_10_group_id_2.pth \
--save_path ./results/wfdd_original_seed_0 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 0 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=1
python -u test.py --dataset dtd --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path /home/dell/wgp/VCP-CLIP/my_exps/train_mvtec_origin_seed_0/epoch_10_group_id_2.pth \
--save_path ./results/dtd_original_seed_0 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 0 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=2
python -u test.py --dataset ksdd2 --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path /home/dell/wgp/VCP-CLIP/my_exps/train_mvtec_origin_seed_0/epoch_10_group_id_2.pth \
--save_path ./results/ksdd2_original_seed_0 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 0 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336






export CUDA_VISIBLE_DEVICES=0
python -u test.py --dataset wfdd --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path /home/dell/wgp/VCP-CLIP/my_exps/train_mvtec_origin_seed_42/epoch_10_group_id_2.pth \
--save_path ./results/wfdd_original_seed_42 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 42 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=1
python -u test.py --dataset dtd --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path /home/dell/wgp/VCP-CLIP/my_exps/train_mvtec_origin_seed_42/epoch_10_group_id_2.pth \
--save_path ./results/dtd_original_seed_42 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 42 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=2
python -u test.py --dataset ksdd2 --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path /home/dell/wgp/VCP-CLIP/my_exps/train_mvtec_origin_seed_42/epoch_10_group_id_2.pth \
--save_path ./results/ksdd2_original_seed_42 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 42 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336








export CUDA_VISIBLE_DEVICES=0
python -u test.py --dataset wfdd --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path /home/dell/wgp/VCP-CLIP/my_exps/train_mvtec_origin_seed_111/epoch_10_group_id_2.pth \
--save_path ./results/wfdd_original_seed_111 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=1
python -u test.py --dataset dtd --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path /home/dell/wgp/VCP-CLIP/my_exps/train_mvtec_origin_seed_111/epoch_10_group_id_2.pth \
--save_path ./results/dtd_original_seed_111 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

export CUDA_VISIBLE_DEVICES=2
python -u test.py --dataset ksdd2 --data_path /mnt/data3/wgp3/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path /home/dell/wgp/VCP-CLIP/my_exps/train_mvtec_origin_seed_111/epoch_10_group_id_2.pth \
--save_path ./results/ksdd2_original_seed_111 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336




