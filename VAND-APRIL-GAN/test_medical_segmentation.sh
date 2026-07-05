python test.py --mode zero_shot --dataset cvc300 \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-300 \
--save_path ./results/zero_shot/test_cvc300_train_mvtec_origin \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_origin/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset cvc300 \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-300 \
--save_path ./results/zero_shot/test_cvc300_train_mvtec_zsad_common_sense \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset cvc300 \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-300 \
--save_path ./results/zero_shot/test_cvc300_train_mvtec_zsad_extended \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_extended/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518




python test.py --mode zero_shot --dataset clinicdb \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ClinicDB \
--save_path ./results/zero_shot/test_clinicdb_train_mvtec_origin \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_origin/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset clinicdb \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ClinicDB \
--save_path ./results/zero_shot/test_clinicdb_train_mvtec_zsad_common_sense \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset clinicdb \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ClinicDB \
--save_path ./results/zero_shot/test_clinicdb_train_mvtec_zsad_extended \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_extended/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518




python test.py --mode zero_shot --dataset colondb \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ColonDB \
--save_path ./results/zero_shot/test_colondb_train_mvtec_origin \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_origin/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset colondb \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ColonDB \
--save_path ./results/zero_shot/test_colondb_train_mvtec_zsad_common_sense \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset colondb \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ColonDB \
--save_path ./results/zero_shot/test_colondb_train_mvtec_zsad_extended \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_extended/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518




python test.py --mode zero_shot --dataset isic \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/ISIC \
--save_path ./results/zero_shot/test_isic_train_mvtec_origin \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_origin/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset isic \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/ISIC \
--save_path ./results/zero_shot/test_isic_train_mvtec_zsad_common_sense \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset isic \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/ISIC \
--save_path ./results/zero_shot/test_isic_train_mvtec_zsad_extended \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_extended/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518