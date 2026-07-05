python test.py --mode zero_shot --dataset br35h \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
--save_path ./results/zero_shot/test_br35h_train_mvtec_origin \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_origin/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset br35h \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
--save_path ./results/zero_shot/test_br35h_train_mvtec_zsad_common_sense \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset br35h \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
--save_path ./results/zero_shot/test_br35h_train_mvtec_zsad_extended \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_extended/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset br35h --data_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection --save_path ./results/zero_shot/test_br35h_train_mvtec_zsad_extended --config_path ./open_clip/model_configs/ViT-L-14-336.json --checkpoint_path ./checkpoints/mvtec_zsad_extended/epoch_3.pth --model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518


python test.py --mode zero_shot --dataset brainmri \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--save_path ./results/zero_shot/test_brainmri_train_mvtec_origin \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_origin/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset brainmri \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--save_path ./results/zero_shot/test_brainmri_train_mvtec_zsad_common_sense \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset brainmri \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--save_path ./results/zero_shot/test_brainmri_train_mvtec_zsad_extended \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_extended/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518




python test.py --mode zero_shot --dataset headct \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--save_path ./results/zero_shot/test_headct_train_mvtec_origin \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_origin/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset headct \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--save_path ./results/zero_shot/test_headct_train_mvtec_zsad_common_sense \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset headct \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--save_path ./results/zero_shot/test_headct_train_mvtec_zsad_extended \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_extended/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518