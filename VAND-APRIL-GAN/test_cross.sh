python test.py --mode zero_shot --dataset visa \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--save_path ./results/zero_shot/test_visa_zsad_common_sense_train_mvtec_origin \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_origin/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--save_path ./results/zero_shot/test_visa_zsad_common_sense_train_mvtec_zsad_extended \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_extended/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518



python test.py --mode zero_shot --dataset visa \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--save_path ./results/zero_shot/test_visa_zsad_extended_train_mvtec_origin \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_origin/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--save_path ./results/zero_shot/test_visa_zsad_extended_train_mvtec_zsad_common_sense \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518



python test.py --mode zero_shot --dataset visa \
--data_path /home/dell/wgp/datasets/VisA \
--save_path ./results/zero_shot/test_visa_origin_train_mvtec_zsad_common_sense \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--data_path /home/dell/wgp/datasets/VisA \
--save_path ./results/zero_shot/test_visa_origin_train_mvtec_zsad_extended \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_extended/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518