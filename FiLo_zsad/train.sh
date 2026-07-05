python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--epoch 15 --seed 0 --save_path ./checkpoints/mvtec_zsad_common_sense_seed_0

python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--epoch 15 --seed 0 --save_path ./checkpoints/visa_zsad_common_sense_seed_0

python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--epoch 15 --seed 0 --save_path ./checkpoints/mvtec_zsad_extended_seed_0

python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--epoch 15 --seed 0 --save_path ./checkpoints/visa_zsad_extended_seed_0

python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--epoch 15 --seed 0 --save_path ./checkpoints/mvtec_seed_0

python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/VisA \
--epoch 15 --seed 0 --save_path ./checkpoints/visa_seed_0


python train.py --dataset mvtec --train_data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection --epoch 15 --seed 0 --save_path ./checkpoints/mvtec_seed_0

python train.py --dataset visa --train_data_path /home/dell/wgp/datasets/VisA --epoch 15 --seed 0 --save_path ./checkpoints/visa_seed_0

---------------------------------------------------------------------------------------------------
export CUDA_VISIBLE_DEVICES=0
python train.py --dataset mvtec --train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--epoch 15 --seed 111 --save_path ./checkpoints/mvtec_rethink_zsad_seed_111


python train.py --dataset visa --train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--epoch 15 --seed 111 --save_path ./checkpoints/visa_rethink_zsad_seed_111


python train.py --dataset mvtec --train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--epoch 15 --seed 42 --save_path ./checkpoints/mvtec_rethink_zsad_seed_42


python train.py --dataset visa --train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--epoch 15 --seed 42 --save_path ./checkpoints/visa_rethink_zsad_seed_42


python train.py --dataset mvtec --train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--epoch 15 --seed 0 --save_path ./checkpoints/mvtec_rethink_zsad_seed_0


python train.py --dataset visa --train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--epoch 15 --seed 0 --save_path ./checkpoints/visa_rethink_zsad_seed_0

