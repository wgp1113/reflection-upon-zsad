python test_ft.py --dataset visa --data_path /home/dell/wgp/datasets/VisA \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_zsad_common_sense_seed_111/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_visa_origin_train_mvtec_zsad_common_sense \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

python test_ft.py --dataset visa --data_path /home/dell/wgp/datasets/VisA \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_zsad_extended/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_visa_origin_train_mvtec_zsad_extended \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization



python test_ft.py --dataset visa --data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_visa_zsad_common_sense_train_mvtec_origin \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

python test_ft.py --dataset visa --data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_zsad_extended/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_visa_zsad_common_sense_train_mvtec_zsad_extended \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization




python test_ft.py --dataset visa --data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_visa_zsad_extended_train_mvtec_origin \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

python test_ft.py --dataset visa --data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_zsad_common_sense/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_visa_zsad_extended_train_mvtec_zsad_commons_sense \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization



----------------------------------------------------------------------------------------------------------------
python test_ft.py --dataset visa --data_path /home/dell/wgp/datasets/VisA \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_zsad_common_sense_seed_111/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_visa_origin_train_mvtec_zsad_common_sense \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

python test_ft.py --dataset visa --data_path /home/dell/wgp/datasets/VisA \
--checkpoint /mnt/data1/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_zsad_extended/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_visa_origin_train_mvtec_zsad_extended \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization
