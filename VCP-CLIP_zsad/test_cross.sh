python -u test.py --dataset visa --data_path /mnt/data1/wgp/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_zsad_common_sense/epoch_10_group_id_2.pth \
--save_path ./results/test_visa_origin_train_mvtec_zsad_common_sense --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

python -u test.py --dataset visa --data_path /mnt/data1/wgp/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_zsad_extended/epoch_10_group_id_2.pth \
--save_path ./results/test_visa_origin_train_mvtec_zsad_extended --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336



python -u test.py --dataset visa_zsad_common_sense --data_path /mnt/data1/wgp/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_origin/epoch_10_group_id_2.pth \
--save_path ./results/test_visa_zsad_common_sense_train_mvtec_origin --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

python -u test.py --dataset visa_zsad_common_sense --data_path /mnt/data1/wgp/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_zsad_extended/epoch_10_group_id_2.pth \
--save_path ./results/test_visa_zsad_common_sense_train_mvtec_zsad_extended --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336



python -u test.py --dataset visa_zsad_extended --data_path /mnt/data1/wgp/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_origin/epoch_10_group_id_2.pth \
--save_path ./results/test_visa_zsad_extended_train_mvtec_origin --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

python -u test.py --dataset visa_zsad_extended --data_path /mnt/data1/wgp/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_zsad_common_sense/epoch_10_group_id_2.pth \
--save_path ./results/test_visa_zsad_extended_train_mvtec_zsad_common_sense --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

