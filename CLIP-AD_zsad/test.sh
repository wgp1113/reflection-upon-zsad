##################### rethink zsad  ksdd2    wfdd  dtd ######################################
export CUDA_VISIBLE_DEVICES=1
python test_ft.py --dataset wfdd --data_path  /home/dell/wgp/datasets/WFDD \
--checkpoint /home/dell/wgp3/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_rethink_zsad_seed_0/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_wfdd_rethink_zsad_seed_0 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

export CUDA_VISIBLE_DEVICES=2
python test_ft.py --dataset dtd --data_path  /home/dell/wgp/datasets/DTD-Synthetic \
--checkpoint /home/dell/wgp3/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_rethink_zsad_seed_0/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_dtd_rethink_zsad_seed_0 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

export CUDA_VISIBLE_DEVICES=3
python test_ft.py --dataset ksdd2 --data_path  /home/dell/wgp/datasets/ksdd2 \
--checkpoint /home/dell/wgp3/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_rethink_zsad_seed_0/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_ksdd2_rethink_zsad_seed_0 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization





export CUDA_VISIBLE_DEVICES=0
python test_ft.py --dataset wfdd --data_path  /home/dell/wgp/datasets/WFDD \
--checkpoint /home/dell/wgp3/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_rethink_zsad_seed_42/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_wfdd_rethink_zsad_seed_42 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

export CUDA_VISIBLE_DEVICES=1
python test_ft.py --dataset dtd --data_path  /home/dell/wgp/datasets/DTD-Synthetic \
--checkpoint /home/dell/wgp3/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_rethink_zsad_seed_42/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_dtd_rethink_zsad_seed_42 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

export CUDA_VISIBLE_DEVICES=2
python test_ft.py --dataset ksdd2 --data_path  /home/dell/wgp/datasets/ksdd2 \
--checkpoint /home/dell/wgp3/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_rethink_zsad_seed_42/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_ksdd2_rethink_zsad_seed_42 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization





export CUDA_VISIBLE_DEVICES=3
python test_ft.py --dataset wfdd --data_path  /home/dell/wgp/datasets/WFDD \
--checkpoint /home/dell/wgp3/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_rethink_zsad_seed_111/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_wfdd_rethink_zsad_seed_111 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

export CUDA_VISIBLE_DEVICES=2
python test_ft.py --dataset dtd --data_path  /home/dell/wgp/datasets/DTD-Synthetic \
--checkpoint /home/dell/wgp3/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_rethink_zsad_seed_111/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_dtd_rethink_zsad_seed_111 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

export CUDA_VISIBLE_DEVICES=3
python test_ft.py --dataset ksdd2 --data_path  /home/dell/wgp/datasets/ksdd2 \
--checkpoint /home/dell/wgp3/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_rethink_zsad_seed_111/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_ksdd2_rethink_zsad_seed_111 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization


##################### original  ksdd2    wfdd  dtd ######################################
export CUDA_VISIBLE_DEVICES=1
python test_ft.py --dataset wfdd --data_path  /home/dell/wgp/datasets/WFDD \
--checkpoint /home/dell/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin_seed_0/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_wfdd_original_seed_0 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

export CUDA_VISIBLE_DEVICES=2
python test_ft.py --dataset dtd --data_path  /home/dell/wgp/datasets/DTD-Synthetic \
--checkpoint /home/dell/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin_seed_0/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_dtd_original_seed_0 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

export CUDA_VISIBLE_DEVICES=3
python test_ft.py --dataset ksdd2 --data_path  /home/dell/wgp/datasets/ksdd2 \
--checkpoint /home/dell/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin_seed_0/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_ksdd2_original_seed_0 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization





export CUDA_VISIBLE_DEVICES=1
python test_ft.py --dataset wfdd --data_path  /home/dell/wgp/datasets/WFDD \
--checkpoint /home/dell/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin_seed_42/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_wfdd_original_seed_42 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

export CUDA_VISIBLE_DEVICES=2
python test_ft.py --dataset dtd --data_path  /home/dell/wgp/datasets/DTD-Synthetic \
--checkpoint /home/dell/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin_seed_42/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_dtd_original_seed_42 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

export CUDA_VISIBLE_DEVICES=3
python test_ft.py --dataset ksdd2 --data_path  /home/dell/wgp/datasets/ksdd2 \
--checkpoint /home/dell/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin_seed_42/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_ksdd2_original_seed_42 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization




export CUDA_VISIBLE_DEVICES=1
python test_ft.py --dataset wfdd --data_path  /home/dell/wgp/datasets/WFDD \
--checkpoint /home/dell/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin_seed_111/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_wfdd_original_seed_111 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

export CUDA_VISIBLE_DEVICES=2
python test_ft.py --dataset dtd --data_path  /home/dell/wgp/datasets/DTD-Synthetic \
--checkpoint /home/dell/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin_seed_111/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_dtd_original_seed_111 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization

export CUDA_VISIBLE_DEVICES=3
python test_ft.py --dataset ksdd2 --data_path  /home/dell/wgp/datasets/ksdd2 \
--checkpoint /home/dell/wgp/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_mvtec_origin_seed_111/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_ksdd2_original_seed_111 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 16 --rep_vec dbscan --smoothing 2 --visualization




#############################################################
export CUDA_VISIBLE_DEVICES=1
python test_ft.py --dataset mvtec --data_path  /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--checkpoint /home/dell/wgp3/CLIP-AD_zsad/checkpoints/SDP_plus/train_on_vias_rethink_zsad_seed_0/epoch_5.pth \
--save_path ./results/SDP_plus/test/test_time_mvtec_rethink_zsad_seed_0 \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--features_list 3 6 9 12 --image_size 240 --batch_size 1 --rep_vec dbscan --smoothing 2 --visualization


