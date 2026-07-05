#python test.py --save_path ./results/test_br35h_train_mvtec_origin \
#--dataset br35h \
#--dataset_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
#--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin
#
#python test.py --save_path ./results/test_br35h_train_mvtec_zsad_common_sense \
#--dataset br35h \
#--dataset_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
#--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_zsad_common_sense
#
#python test.py --save_path ./results/test_br35h_train_mvtec_zsad_extended \
#--dataset br35h \
#--dataset_path /home/dell/wgp/datasets/medical_datasets/classification/br35h_anomaly_detection \
#--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_zsad_extended




python test.py --save_path ./results/test_brainmri_train_mvtec_origin \
--dataset brainmri \
--dataset_path /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin

python test.py --save_path ./results/test_brainmri_train_mvtec_zsad_common_sense \
--dataset brainmri \
--dataset_path /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_zsad_common_sense

python test.py --save_path ./results/test_brainmri_train_mvtec_zsad_extended \
--dataset brainmri \
--dataset_path /home/dell/wgp/datasets/medical_datasets/classification/BrainMRI \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_zsad_extended





python test.py --save_path ./results/test_headct_train_mvtec_origin \
--dataset headct \
--dataset_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin

python test.py --save_path ./results/test_headct_train_mvtec_zsad_common_sense \
--dataset headct \
--dataset_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_zsad_common_sense

python test.py --save_path ./results/test_headct_train_mvtec_zsad_extended \
--dataset headct \
--dataset_path /home/dell/wgp/datasets/medical_datasets/classification/HeadCT_anomaly_detection \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_zsad_extended


