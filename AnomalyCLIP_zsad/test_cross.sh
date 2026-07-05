#python test.py --dataset visa \
#--data_path  /home/dell/wgp/datasets/VisA \
#--save_path ./results/test_visa_origin_train_mvtec_zsad_common_sense/9_12_4_multiscale/zero_shot_15 \
#--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_111/epoch_15.pth \
#--features_list 24 --image_size 518 \
#--depth 9 --n_ctx 12 --t_n_ctx 4
#
#python test.py --dataset visa \
#--data_path  /home/dell/wgp/datasets/VisA \
#--save_path ./results/test_visa_origin_train_mvtec_zsad_extended/9_12_4_multiscale/zero_shot_15 \
#--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_111/epoch_15.pth \
#--features_list 24 --image_size 518 \
#--depth 9 --n_ctx 12 --t_n_ctx 4



python test.py --dataset visa \
--data_path  /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--save_path ./results/test_visa_zsad_common_sense_train_mvtec_origin/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_origin_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4

python test.py --dataset visa \
--data_path  /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--save_path ./results/test_visa_zsad_common_sense_train_mvtec_zsad_extended/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4



python test.py --dataset visa \
--data_path  /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--save_path ./results/test_visa_zsad_extended_train_mvtec_origin/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_origin_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4

python test.py --dataset visa \
--data_path  /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--save_path ./results/test_visa_zsad_extended_train_mvtec_zsad_common_sense/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4

