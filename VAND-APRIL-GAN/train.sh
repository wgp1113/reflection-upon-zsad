### train on the MVTec AD dataset
python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--save_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --model ViT-L-14-336 \
--features_list 6 12 18 24 --pretrained openai --image_size 518  \
--batch_size 16 --aug_rate 0.2 --print_freq 1 \
--epoch 3 --save_freq 1 --seed 111

python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--save_path ./checkpoints/train_on_visa_rethink_zsad_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --model ViT-L-14-336 \
--features_list 6 12 18 24 --pretrained openai --image_size 518  \
--batch_size 16 --aug_rate 0.2 --print_freq 1 \
--epoch 3 --save_freq 1 --seed 111




python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--save_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --model ViT-L-14-336 \
--features_list 6 12 18 24 --pretrained openai --image_size 518  \
--batch_size 16 --aug_rate 0.2 --print_freq 1 \
--epoch 3 --save_freq 1 --seed 42

python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--save_path ./checkpoints/train_on_visa_rethink_zsad_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --model ViT-L-14-336 \
--features_list 6 12 18 24 --pretrained openai --image_size 518  \
--batch_size 16 --aug_rate 0.2 --print_freq 1 \
--epoch 3 --save_freq 1 --seed 42





python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--save_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --model ViT-L-14-336 \
--features_list 6 12 18 24 --pretrained openai --image_size 518  \
--batch_size 16 --aug_rate 0.2 --print_freq 1 \
--epoch 3 --save_freq 1 --seed 0

python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--save_path ./checkpoints/train_on_visa_rethink_zsad_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --model ViT-L-14-336 \
--features_list 6 12 18 24 --pretrained openai --image_size 518  \
--batch_size 16 --aug_rate 0.2 --print_freq 1 \
--epoch 3 --save_freq 1 --seed 0






