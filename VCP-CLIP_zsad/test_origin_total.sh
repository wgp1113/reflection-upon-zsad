python -u test.py --dataset visa --data_path /mnt/data1/wgp/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_origin_seed_42/epoch_10_group_id_2.pth \
--save_path ./results/visa_origin_seed_42 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 42 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

python -u test.py --dataset visa --data_path /mnt/data1/wgp/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_mvtec_origin_seed_0/epoch_10_group_id_2.pth \
--save_path ./results/visa_origin_seed_0 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 0 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

python -u test.py --dataset mvtec --data_path /mnt/data1/wgp/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_visa_origin_seed_42/epoch_10_group_id_2.pth \
--save_path ./results/mvtec_origin_seed_42 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 42 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

python -u test.py --dataset mvtec --data_path /mnt/data1/wgp/VCP-CLIP/dataset/dataset/mvisa/data \
--checkpoint_path ./my_exps/train_visa_origin_seed_0/epoch_10_group_id_2.pth \
--save_path ./results/mvtec_origin_seed_0 --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 0 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

