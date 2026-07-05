python -u test.py --dataset br35h --data_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
--checkpoint_path ./my_exps/train_mvtec_origin/epoch_10_group_id_2.pth \
--save_path ./results/test_br35h_train_mvtec_origin --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

python -u test.py --dataset br35h --data_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
--checkpoint_path ./my_exps/train_mvtec_zsad_common_sense/epoch_10_group_id_2.pth \
--save_path ./results/test_br35h_train_mvtec_zsad_common_sense --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

python -u test.py --dataset br35h --data_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
--checkpoint_path ./my_exps/train_mvtec_zsad_extended/epoch_10_group_id_2.pth \
--save_path ./results/test_br35h_train_mvtec_zsad_extended --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336




python -u test.py --dataset brainmri --data_path /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--checkpoint_path ./my_exps/train_mvtec_origin/epoch_10_group_id_2.pth \
--save_path ./results/test_brainmri_train_mvtec_origin --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

python -u test.py --dataset brainmri --data_path /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--checkpoint_path ./my_exps/train_mvtec_zsad_common_sense/epoch_10_group_id_2.pth \
--save_path ./results/test_brainmri_train_mvtec_zsad_common_sense --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

python -u test.py --dataset brainmri --data_path /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--checkpoint_path ./my_exps/train_mvtec_zsad_extended/epoch_10_group_id_2.pth \
--save_path ./results/test_brainmri_train_mvtec_zsad_extended --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336






python -u test.py --dataset headct --data_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--checkpoint_path ./my_exps/train_mvtec_origin/epoch_10_group_id_2.pth \
--save_path ./results/test_headct_train_mvtec_origin --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

python -u test.py --dataset headct --data_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--checkpoint_path ./my_exps/train_mvtec_zsad_common_sense/epoch_10_group_id_2.pth \
--save_path ./results/test_headct_train_mvtec_zsad_common_sense --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336

python -u test.py --dataset headct --data_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--checkpoint_path ./my_exps/train_mvtec_zsad_extended/epoch_10_group_id_2.pth \
--save_path ./results/test_headct_train_mvtec_zsad_extended --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336



