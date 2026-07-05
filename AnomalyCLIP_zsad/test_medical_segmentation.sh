python test.py --dataset cvc300 \
--data_path  /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-300 \
--save_path ./results/cvc300_train_mvtec_origin/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_origin_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics pixel-level

python test.py --dataset cvc300 \
--data_path  /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-300 \
--save_path ./results/cvc300_train_mvtec_zsad_common_sense/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics pixel-level

python test.py --dataset cvc300 \
--data_path  /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-300 \
--save_path ./results/cvc300_train_mvtec_zsad_extended/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics pixel-level




python test.py --dataset clinicdb \
--data_path  /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ClinicDB \
--save_path ./results/clinicdb_train_mvtec_origin/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_origin_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics pixel-level

python test.py --dataset clinicdb \
--data_path  /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ClinicDB \
--save_path ./results/clinicdb_train_mvtec_zsad_common_sense/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics pixel-level

python test.py --dataset clinicdb \
--data_path  /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ClinicDB \
--save_path ./results/clinicdb_train_mvtec_zsad_extended/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics pixel-level




python test.py --dataset colondb \
--data_path  /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ColonDB \
--save_path ./results/colondb_train_mvtec_origin/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_origin_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics pixel-level

python test.py --dataset colondb \
--data_path  /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ColonDB \
--save_path ./results/colondb_train_mvtec_zsad_common_sense/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics pixel-level

python test.py --dataset colondb \
--data_path  /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ColonDB \
--save_path ./results/colondb_train_mvtec_zsad_extended/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics pixel-level




python test.py --dataset isic \
--data_path  /home/dell/wgp/datasets/medical_datasets/segmentation/ISIC \
--save_path ./results/isic_train_mvtec_origin/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_origin_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics pixel-level

python test.py --dataset isic \
--data_path  /home/dell/wgp/datasets/medical_datasets/segmentation/ISIC \
--save_path ./results/isic_train_mvtec_zsad_common_sense/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics pixel-level

python test.py --dataset isic \
--data_path  /home/dell/wgp/datasets/medical_datasets/segmentation/ISIC \
--save_path ./results/isic_train_mvtec_zsad_extended/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4 --metrics pixel-level