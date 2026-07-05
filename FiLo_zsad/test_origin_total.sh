#python test.py --dataset visa --data_path /home/dell/wgp/datasets/VisA \
#--ckpt_path ./checkpoints/mvtec_origin_seed_0/filo_train_on_mvtec.pth \
#--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
#--save_path ./results/visa_origin_seed_0
#
#python test.py --dataset visa --data_path /home/dell/wgp/datasets/VisA \
#--ckpt_path ./checkpoints/mvtec_origin_seed_42/filo_train_on_mvtec.pth \
#--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
#--save_path ./results/visa_origin_seed_42
#
#python test.py --dataset visa --data_path /home/dell/wgp/datasets/VisA \
#--ckpt_path ./checkpoints/mvtec_origin_seed_111/filo_train_on_mvtec.pth \
#--grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth \
#--save_path ./results/visa_origin_seed_111

python test.py --dataset mvtec --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--ckpt_path ./checkpoints/visa_origin_seed_0/filo_train_on_visa.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_visa.pth \
--save_path ./results/mvtec_origin_seed_0

python test.py --dataset mvtec --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--ckpt_path ./checkpoints/visa_origin_seed_42/filo_train_on_visa.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_visa.pth \
--save_path ./results/mvtec_origin_seed_42

python test.py --dataset mvtec --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--ckpt_path ./checkpoints/visa_origin_seed_111/filo_train_on_visa.pth \
--grounded_checkpoint ./grounding_dino/grounding_train_on_visa.pth \
--save_path ./results/mvtec_origin_seed_111


python test.py --dataset mvtec --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection --ckpt_path ./checkpoints/visa_origin_seed_0/filo_train_on_visa.pth --grounded_checkpoint ./grounding_dino/grounding_train_on_visa.pth --save_path ./results/mvtec_seed_0

python test.py --dataset visa --data_path /home/dell/wgp/datasets/VisA --ckpt_path ./checkpoints/mvtec_origin_seed_0/filo_train_on_mvtec.pth --grounded_checkpoint ./grounding_dino/grounding_train_on_mvtec.pth --save_path ./results/visa_origin_seed_0

