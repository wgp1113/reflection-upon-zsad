python reproduce_WinCLIP_back.py --dataset br35h \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
--save_path ./results/winclip_br35h/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--k_shot 0 --image_size 240

python reproduce_WinCLIP_back.py --dataset brainmri \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--save_path ./results/winclip_brainmri/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--k_shot 0 --image_size 240

python reproduce_WinCLIP_back.py --dataset headct \
--data_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--save_path ./results/winclip_headct/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--k_shot 0 --image_size 240

python reproduce_WinCLIP_back.py --dataset headct --data_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection --save_path ./results/winclip_headct/few-shot-0 --model ViT-B-16-plus-240 --pretrained openai --k_shot 0 --image_size 240





