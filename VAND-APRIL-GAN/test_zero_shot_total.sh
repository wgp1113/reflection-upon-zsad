python test.py --mode zero_shot --dataset mvtec \
--seed 42 \
--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--save_path ./results/zero_shot/mvtec_zsad_common_sense_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/visa_zsad_common_sense_seed_42/epoch_15.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset mvtec \
--seed 42 \
--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--save_path ./results/zero_shot/mvtec_zsad_extended_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/visa_zsad_extended_seed_42/epoch_15.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--seed 42 \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--save_path ./results/zero_shot/visa_zsad_common_sense_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--seed 42 \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--save_path ./results/zero_shot/visa_zsad_extended_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset mvtec \
--seed 42 \
--data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--save_path ./results/zero_shot/mvtec_origin_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/visa_origin_seed_42/epoch_15.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518


python test.py --mode zero_shot --dataset visa \
--seed 42 \
--data_path /home/dell/wgp/datasets/VisA \
--save_path ./results/zero_shot/visa_origin_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_origin_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518








python test.py --mode zero_shot --dataset mvtec \
--seed 0 \
--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--save_path ./results/zero_shot/mvtec_zsad_common_sense_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/visa_zsad_common_sense_seed_0/epoch_15.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset mvtec \
--seed 0 \
--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--save_path ./results/zero_shot/mvtec_zsad_extended_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/visa_zsad_extended_seed_0/epoch_15.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--seed 0 \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--save_path ./results/zero_shot/visa_zsad_common_sense_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--seed 0 \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--save_path ./results/zero_shot/visa_zsad_extended_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset mvtec \
--seed 0 \
--data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--save_path ./results/zero_shot/mvtec_origin_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/visa_origin_seed_0/epoch_15.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518


python test.py --mode zero_shot --dataset visa \
--seed 0 \
--data_path /home/dell/wgp/datasets/VisA \
--save_path ./results/zero_shot/visa_origin_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_origin_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518







#python test.py --mode zero_shot --dataset mvtec \
#--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
#--save_path ./results/zero_shot/mvtec_zsad_common_sense_seed_0 \
#--config_path ./open_clip/model_configs/ViT-L-14-336.json \
#--checkpoint_path ./checkpoints/visa_zsad_common_sense_seed_0/epoch_15.pth \
#--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

#python test.py --mode zero_shot --dataset mvtec \
#--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
#--save_path ./results/zero_shot/mvtec_zsad_extended_seed_0 \
#--config_path ./open_clip/model_configs/ViT-L-14-336.json \
#--checkpoint_path ./checkpoints/visa_zsad_extended_seed_0/epoch_15.pth \
#--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

#python test.py --mode zero_shot --dataset visa \
#--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
#--save_path ./results/zero_shot/visa_zsad_common_sense_seed_0 \
#--config_path ./open_clip/model_configs/ViT-L-14-336.json \
#--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_0/epoch_3.pth \
#--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518
#
#python test.py --mode zero_shot --dataset visa \
#--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
#--save_path ./results/zero_shot/visa_zsad_extended_seed_0 \
#--config_path ./open_clip/model_configs/ViT-L-14-336.json \
#--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_0/epoch_3.pth \
#--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

#python test.py --mode zero_shot --dataset mvtec \
#--data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
#--save_path ./results/zero_shot/mvtec_origin_seed_0 \
#--config_path ./open_clip/model_configs/ViT-L-14-336.json \
#--checkpoint_path ./checkpoints/visa_origin_seed_0/epoch_15.pth \
#--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518


#python test.py --mode zero_shot --dataset visa \
#--data_path /home/dell/wgp/datasets/VisA \
#--save_path ./results/zero_shot/visa_origin_seed_0 \
#--config_path ./open_clip/model_configs/ViT-L-14-336.json \
#--checkpoint_path ./checkpoints/mvtec_origin_seed_0/epoch_3.pth \
#--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518



-------------------------------------------------------------------------------------------------
export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset mvtec \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--save_path ./results/zero_shot/mvtec_rethink_zsad_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_visa_rethink_zsad_seed_111/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset visa \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--save_path ./results/zero_shot/visa_rethink_zsad_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_111/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518




python test.py --mode zero_shot --dataset mvtec \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--save_path ./results/zero_shot/mvtec_rethink_zsad_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_visa_rethink_zsad_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--save_path ./results/zero_shot/visa_rethink_zsad_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518





python test.py --mode zero_shot --dataset mvtec \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--save_path ./results/zero_shot/mvtec_rethink_zsad_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_visa_rethink_zsad_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--save_path ./results/zero_shot/visa_rethink_zsad_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518


########################### rethink zsad  ksdd2  wfdd  dtd ##################################################
export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--save_path ./results/zero_shot/wfdd_rethink_zsad_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--save_path ./results/zero_shot/dtd_rethink_zsad_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--save_path ./results/zero_shot/ksdd2_rethink_zsad_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518






export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--save_path ./results/zero_shot/wfdd_rethink_zsad_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--save_path ./results/zero_shot/dtd_rethink_zsad_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--save_path ./results/zero_shot/ksdd2_rethink_zsad_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518






export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--save_path ./results/zero_shot/wfdd_rethink_zsad_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_111/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--save_path ./results/zero_shot/dtd_rethink_zsad_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_111/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--save_path ./results/zero_shot/ksdd2_rethink_zsad_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/train_on_mvtec_rethink_zsad_seed_111/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518


########################### original  ksdd2  wfdd  dtd ##################################################
export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--save_path ./results/zero_shot/wfdd_original_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path /home/dell/wgp/VAND-APRIL-GAN/checkpoints/mvtec_origin_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--save_path ./results/zero_shot/dtd_original_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path /home/dell/wgp/VAND-APRIL-GAN/checkpoints/mvtec_origin_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--save_path ./results/zero_shot/ksdd2_original_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path /home/dell/wgp/VAND-APRIL-GAN/checkpoints/mvtec_origin_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518





export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--save_path ./results/zero_shot/wfdd_original_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path /home/dell/wgp/VAND-APRIL-GAN/checkpoints/mvtec_origin_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--save_path ./results/zero_shot/dtd_original_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path /home/dell/wgp/VAND-APRIL-GAN/checkpoints/mvtec_origin_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--save_path ./results/zero_shot/ksdd2_original_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path /home/dell/wgp/VAND-APRIL-GAN/checkpoints/mvtec_origin_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518





export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset wfdd \
--data_path /home/dell/wgp/datasets/WFDD \
--save_path ./results/zero_shot/wfdd_original_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path /home/dell/wgp/VAND-APRIL-GAN/checkpoints/mvtec_origin_seed_111/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset dtd \
--data_path /home/dell/wgp/datasets/DTD-Synthetic \
--save_path ./results/zero_shot/dtd_original_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path /home/dell/wgp/VAND-APRIL-GAN/checkpoints/mvtec_origin_seed_111/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

export CUDA_VISIBLE_DEVICES=2
python test.py --mode zero_shot --dataset ksdd2 \
--data_path /home/dell/wgp/datasets/ksdd2 \
--save_path ./results/zero_shot/ksdd2_original_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path /home/dell/wgp/VAND-APRIL-GAN/checkpoints/mvtec_origin_seed_111/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518



