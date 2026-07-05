python reproduce_WinCLIP_back.py --dataset clinicdb \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ClinicDB \
--save_path ./results/winclip_clinicdb/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--k_shot 0 --image_size 240

python reproduce_WinCLIP_back.py --dataset colondb \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-ColonDB \
--save_path ./results/winclip_colondb/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--k_shot 0 --image_size 240

python reproduce_WinCLIP_back.py --dataset cvc300 \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/CVC-300 \
--save_path ./results/winclip_cvc300/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--k_shot 0 --image_size 240

python reproduce_WinCLIP_back.py --dataset isic \
--data_path /home/dell/wgp/datasets/medical_datasets/segmentation/ISIC \
--save_path ./results/winclip_isic/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--k_shot 0 --image_size 240





