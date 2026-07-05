python test.py --dataset br35h \
--data_path  /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
--save_path ./results/br35h_train_mvtec_origin/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_origin_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-level

python test.py --dataset br35h \
--data_path  /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
--save_path ./results/br35h_train_mvtec_zsad_common_sense/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-level

python test.py --dataset br35h \
--data_path  /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
--save_path ./results/br35h_train_mvtec_zsad_extended/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-level



python test.py --dataset brainmri \
--data_path  /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--save_path ./results/brainmri_train_mvtec_origin/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_origin_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-level

python test.py --dataset brainmri \
--data_path  /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--save_path ./results/brainmri_train_mvtec_zsad_common_sense/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-level

python test.py --dataset brainmri \
--data_path  /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--save_path ./results/brainmri_train_mvtec_zsad_extended/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-level




python test.py --dataset headct \
--data_path  /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--save_path ./results/headct_train_mvtec_origin/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_origin_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-level

python test.py --dataset headct \
--data_path  /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--save_path ./results/headct_train_mvtec_zsad_common_sense/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-level

python test.py --dataset headct \
--data_path  /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--save_path ./results/headct_train_mvtec_zsad_extended/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics image-level
