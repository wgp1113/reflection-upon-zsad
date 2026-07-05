python test_ft.py --dataset br35h \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_br35h_train_mvtec_origin \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 \
--config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 \
--rep_vec dbscan --smoothing 2 --visualization

python test_ft.py --dataset br35h \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_zsad_common_sense_seed_111/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_br35h_train_mvtec_zsad_common_sense \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 \
--config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 \
--rep_vec dbscan --smoothing 2 --visualization

python test_ft.py --dataset br35h \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_zsad_extended/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_br35h_train_mvtec_zsad_extended \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 \
--config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 \
--rep_vec dbscan --smoothing 2 --visualization


python test_ft.py --dataset br35h --data_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection --checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin/epoch_5.pth --save_path ./results/SDP_plus/test/test_br35h_train_mvtec_origin --model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json --features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization




python test_ft.py --dataset brainmri \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_brainmri_train_mvtec_origin \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 \
--config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 \
--rep_vec dbscan --smoothing 2 --visualization

python test_ft.py --dataset brainmri \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_zsad_common_sense_seed_111/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_brainmri_train_mvtec_zsad_common_sense \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 \
--config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 \
--rep_vec dbscan --smoothing 2 --visualization

python test_ft.py --dataset brainmri \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_zsad_extended/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_brainmri_train_mvtec_zsad_extended \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 \
--config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 \
--rep_vec dbscan --smoothing 2 --visualization







python test_ft.py --dataset headct \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_headct_train_mvtec_origin \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 \
--config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 \
--rep_vec dbscan --smoothing 2 --visualization

python test_ft.py --dataset headct \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_zsad_common_sense_seed_111/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_headct_train_mvtec_zsad_common_sense \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 \
--config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 \
--rep_vec dbscan --smoothing 2 --visualization

python test_ft.py --dataset headct \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_zsad_extended/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_headct_train_mvtec_zsad_extended \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 \
--config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 \
--rep_vec dbscan --smoothing 2 --visualization
