python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/test_on_mvtec.pth \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
    --cache_dir ./cache \
    --save_path ./results/test_on_mvtec \
    --device cuda:0

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/mrad_clip_final.pth \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
    --cache_dir ./cache \
    --save_path ./results/test_on_mvtec_train_self \
    --device cuda:0


---------------------------------------------------------------------------------------------------
###### original dataset

python train.py \
    --model_type mrad-clip \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
    --save_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_111 \
    --cache_dir ./cache \
    --device cuda:0 \
    --seed 111

python train.py \
    --model_type mrad-clip \
    --dataset visa \
    --data_path /home/dell/wgp/datasets/VisA \
    --save_path ./checkpoints/mrad_clip/train_on_visa_original_seed_111 \
    --cache_dir ./cache \
    --device cuda:1 \
    --seed 111




python train.py \
    --model_type mrad-clip \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
    --save_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_42 \
    --cache_dir ./cache \
    --device cuda:2 \
    --seed 42

python train.py \
    --model_type mrad-clip \
    --dataset visa \
    --data_path /home/dell/wgp/datasets/VisA \
    --save_path ./checkpoints/mrad_clip/train_on_visa_original_seed_42 \
    --cache_dir ./cache \
    --device cuda:3 \
    --seed 42





python train.py \
    --model_type mrad-clip \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
    --save_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_0 \
    --cache_dir ./cache \
    --device cuda:0 \
    --seed 0

python train.py \
    --model_type mrad-clip \
    --dataset visa \
    --data_path /home/dell/wgp/datasets/VisA \
    --save_path ./checkpoints/mrad_clip/train_on_visa_original_seed_0 \
    --cache_dir ./cache \
    --device cuda:1 \
    --seed 0


----------------------------------------------------------------------------------------------------------
#########    rethink zsad dataset    ###########################
python train.py \
    --model_type mrad-clip \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
    --save_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_111 \
    --cache_dir ./cache \
    --device cuda:0 \
    --seed 111

python train.py \
    --model_type mrad-clip \
    --dataset visa \
    --data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
    --save_path ./checkpoints/mrad_clip/train_on_visa_rethink_zsad_seed_111 \
    --cache_dir ./cache \
    --device cuda:1 \
    --seed 111





python train.py \
    --model_type mrad-clip \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
    --save_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_42 \
    --cache_dir ./cache \
    --device cuda:2 \
    --seed 42

python train.py \
    --model_type mrad-clip \
    --dataset visa \
    --data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
    --save_path ./checkpoints/mrad_clip/train_on_visa_rethink_zsad_seed_42 \
    --cache_dir ./cache \
    --device cuda:3 \
    --seed 42





python train.py \
    --model_type mrad-clip \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
    --save_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_0 \
    --cache_dir ./cache \
    --device cuda:0 \
    --seed 0

python train.py \
    --model_type mrad-clip \
    --dataset visa \
    --data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
    --save_path ./checkpoints/mrad_clip/train_on_visa_rethink_zsad_seed_0 \
    --cache_dir ./cache \
    --device cuda:1 \
    --seed 0


----------------------------------------------------------------------------------
###################  test on original datasets  #############################
python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_visa_original_seed_0/mrad_clip_final.pth \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
    --cache_dir ./cache \
    --save_path ./results/mvtec_train_on_visa_original_seed_0 \
    --device cuda:0

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_0/mrad_clip_final.pth \
    --dataset visa \
    --data_path /home/dell/wgp/datasets/VisA \
    --cache_dir ./cache \
    --save_path ./results/visa_train_on_mvtec_original_seed_0 \
    --device cuda:1





python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_visa_original_seed_42/mrad_clip_final.pth \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
    --cache_dir ./cache \
    --save_path ./results/mvtec_train_on_visa_original_seed_42 \
    --device cuda:2

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_42/mrad_clip_final.pth \
    --dataset visa \
    --data_path /home/dell/wgp/datasets/VisA \
    --cache_dir ./cache \
    --save_path ./results/visa_train_on_mvtec_original_seed_42 \
    --device cuda:3






python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_visa_original_seed_111/mrad_clip_final.pth \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
    --cache_dir ./cache \
    --save_path ./results/mvtec_train_on_visa_original_seed_111 \
    --device cuda:0

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_111/mrad_clip_final.pth \
    --dataset visa \
    --data_path /home/dell/wgp/datasets/VisA \
    --cache_dir ./cache \
    --save_path ./results/visa_train_on_mvtec_original_seed_111 \
    --device cuda:1


###################  test on rethink zsad datasets  #############################
python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_visa_rethink_zsad_seed_0/mrad_clip_final.pth \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
    --cache_dir ./cache \
    --save_path ./results/mvtec_train_on_visa_rethink_zsad_seed_0 \
    --device cuda:2

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_0/mrad_clip_final.pth \
    --dataset visa \
    --data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
    --cache_dir ./cache \
    --save_path ./results/visa_train_on_mvtec_rethink_zsad_seed_0 \
    --device cuda:3



python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_visa_rethink_zsad_seed_42/mrad_clip_final.pth \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
    --cache_dir ./cache \
    --save_path ./results/mvtec_train_on_visa_rethink_zsad_seed_42 \
    --device cuda:0

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_42/mrad_clip_final.pth \
    --dataset visa \
    --data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
    --cache_dir ./cache \
    --save_path ./results/visa_train_on_mvtec_rethink_zsad_seed_42 \
    --device cuda:1




python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_visa_rethink_zsad_seed_111/mrad_clip_final.pth \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
    --cache_dir ./cache \
    --save_path ./results/mvtec_train_on_visa_rethink_zsad_seed_111 \
    --device cuda:2

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_111/mrad_clip_final.pth \
    --dataset visa \
    --data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
    --cache_dir ./cache \
    --save_path ./results/visa_train_on_mvtec_rethink_zsad_seed_111 \
    --device cuda:3



##################### wfdd ksdd2 dtd ###############################################
python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_0/mrad_clip_final.pth \
    --dataset ksdd2 \
    --data_path /home/dell/wgp/datasets/ksdd2 \
    --cache_dir ./cache \
    --save_path ./results/ksdd2_train_on_mvtec_rethink_zsad_seed_0 \
    --device cuda:0

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_0/mrad_clip_final.pth \
    --dataset dtd \
    --data_path /home/dell/wgp/datasets/DTD-Synthetic \
    --cache_dir ./cache \
    --save_path ./results/dtd_train_on_mvtec_rethink_zsad_seed_0 \
    --device cuda:1

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_0/mrad_clip_final.pth \
    --dataset wfdd \
    --data_path /home/dell/wgp/datasets/WFDD \
    --cache_dir ./cache \
    --save_path ./results/wfdd_train_on_mvtec_rethink_zsad_seed_0 \
    --device cuda:2





python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_42/mrad_clip_final.pth \
    --dataset ksdd2 \
    --data_path /home/dell/wgp/datasets/ksdd2 \
    --cache_dir ./cache \
    --save_path ./results/ksdd2_train_on_mvtec_rethink_zsad_seed_42 \
    --device cuda:3

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_42/mrad_clip_final.pth \
    --dataset dtd \
    --data_path /home/dell/wgp/datasets/DTD-Synthetic \
    --cache_dir ./cache \
    --save_path ./results/dtd_train_on_mvtec_rethink_zsad_seed_42 \
    --device cuda:0

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_42/mrad_clip_final.pth \
    --dataset wfdd \
    --data_path /home/dell/wgp/datasets/WFDD \
    --cache_dir ./cache \
    --save_path ./results/wfdd_train_on_mvtec_rethink_zsad_seed_42 \
    --device cuda:2





python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_111/mrad_clip_final.pth \
    --dataset ksdd2 \
    --data_path /home/dell/wgp/datasets/ksdd2 \
    --cache_dir ./cache \
    --save_path ./results/ksdd2_train_on_mvtec_rethink_zsad_seed_111 \
    --device cuda:3

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_111/mrad_clip_final.pth \
    --dataset dtd \
    --data_path /home/dell/wgp/datasets/DTD-Synthetic \
    --cache_dir ./cache \
    --save_path ./results/dtd_train_on_mvtec_rethink_zsad_seed_111 \
    --device cuda:1

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_rethink_zsad_seed_111/mrad_clip_final.pth \
    --dataset wfdd \
    --data_path /home/dell/wgp/datasets/WFDD \
    --cache_dir ./cache \
    --save_path ./results/wfdd_train_on_mvtec_rethink_zsad_seed_111 \
    --device cuda:2

####################  original  ksdd2  dtd  wfdd #############################
python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_0/mrad_clip_final.pth \
    --dataset wfdd \
    --data_path /home/dell/wgp/datasets/WFDD \
    --cache_dir ./cache \
    --save_path ./results/wfdd_train_on_mvtec_original_seed_0 \
    --device cuda:0

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_0/mrad_clip_final.pth \
    --dataset ksdd2 \
    --data_path /home/dell/wgp/datasets/ksdd2 \
    --cache_dir ./cache \
    --save_path ./results/ksdd2_train_on_mvtec_original_seed_0 \
    --device cuda:1

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_0/mrad_clip_final.pth \
    --dataset dtd \
    --data_path /home/dell/wgp/datasets/DTD-Synthetic \
    --cache_dir ./cache \
    --save_path ./results/dtd_train_on_mvtec_original_seed_0 \
    --device cuda:2





python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_42/mrad_clip_final.pth \
    --dataset wfdd \
    --data_path /home/dell/wgp/datasets/WFDD \
    --cache_dir ./cache \
    --save_path ./results/wfdd_train_on_mvtec_original_seed_42 \
    --device cuda:3

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_42/mrad_clip_final.pth \
    --dataset ksdd2 \
    --data_path /home/dell/wgp/datasets/ksdd2 \
    --cache_dir ./cache \
    --save_path ./results/ksdd2_train_on_mvtec_original_seed_42 \
    --device cuda:0

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_42/mrad_clip_final.pth \
    --dataset dtd \
    --data_path /home/dell/wgp/datasets/DTD-Synthetic \
    --cache_dir ./cache \
    --save_path ./results/dtd_train_on_mvtec_original_seed_42 \
    --device cuda:1





python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_111/mrad_clip_final.pth \
    --dataset wfdd \
    --data_path /home/dell/wgp/datasets/WFDD \
    --cache_dir ./cache \
    --save_path ./results/wfdd_train_on_mvtec_original_seed_111 \
    --device cuda:2

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_111/mrad_clip_final.pth \
    --dataset ksdd2 \
    --data_path /home/dell/wgp/datasets/ksdd2 \
    --cache_dir ./cache \
    --save_path ./results/ksdd2_train_on_mvtec_original_seed_111 \
    --device cuda:3

python test.py \
    --model_type mrad-clip \
    --checkpoint_path ./checkpoints/mrad_clip/train_on_mvtec_original_seed_111/mrad_clip_final.pth \
    --dataset dtd \
    --data_path /home/dell/wgp/datasets/DTD-Synthetic \
    --cache_dir ./cache \
    --save_path ./results/dtd_train_on_mvtec_original_seed_111 \
    --device cuda:1


#################################################
python train.py \
    --model_type mrad-clip \
    --dataset mvtec \
    --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection_12 \
    --save_path ./checkpoints/mrad_clip/train_on_mvtec_12_seed_0 \
    --cache_dir ./cache \
    --device cuda:0 \
    --seed 0


