#python test.py --testing_model dataset \
#--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_extended/origin/models/['mvtec']_5.pth" \
#--save_fig True \
#--save_path ./workspaces/results/test_visa_origin_train_mvtec_zsad_extended \
#--testing_data visa
#
#python test.py --testing_model dataset \
#--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_common_sense/origin/models/['mvtec']_5.pth" \
#--save_fig True \
#--save_path ./workspaces/results/test_visa_origin_train_mvtec_zsad_common_sense \
#--testing_data visa
#
#
#python test.py --testing_model dataset \
#--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin/origin/models/['mvtec']_5.pth" \
#--save_fig True \
#--save_path ./workspaces/results/test_visa_zsad_common_sense_train_mvtec_origin \
#--testing_data visa

#python test.py --testing_model dataset \
#--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_extended/origin/models/['mvtec']_5.pth" \
#--save_fig True \
#--save_path ./workspaces/results/test_visa_zsad_common_sense_train_mvtec_zsad_extended \
#--testing_data visa

python test.py --testing_model dataset --ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin/origin/models/['mvtec']_5.pth" --save_fig True --save_path ./workspaces/results/time_test_visa_zsad_common_sense_train_mvtec_origin --testing_data visa


python test.py --testing_model dataset \
--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/111test_visa_zsad_extended_train_mvtec_origin \
--testing_data visa

python test.py --testing_model dataset \
--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_extended/origin/models/['mvtec']_5.pth" \
--save_fig True \
--save_path ./workspaces/results/test_visa_zsad_extended_train_mvtec_zsad_common_sense \
--testing_data visa



python test.py --testing_model dataset \
--ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_0/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_visa_rethink_zsad_seed_0 \
--testing_data visa



python test.py --testing_model dataset \
--ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/visa_rethink_zsad_seed_0/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_metec_rethink_zsad_seed_0 \
--testing_data mvtec



--testing_model dataset --ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_0/origin/models/['mvtec']_4.pth" --save_fig True --save_path ./workspaces/results/test_visa_rethink_zsad_seed_0 --testing_data visa


--testing_model dataset --ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/visa_rethink_zsad_seed_0/origin/models/['visa']_4.pth" --save_fig True --save_path ./workspaces/results/test_mvtec_rethink_zsad_seed_0 --testing_data mvtec


################################## rethink zsad ksdd2 wfdd dtd ########################################################
export CUDA_VISIBLE_DEVICES=0
python test.py --testing_model dataset \
--ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_0/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_wfdd_rethink_zsad_seed_0 \
--testing_data wfdd

export CUDA_VISIBLE_DEVICES=1
python test.py --testing_model dataset \
--ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_0/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_ksdd2_rethink_zsad_seed_0 \
--testing_data ksdd2

export CUDA_VISIBLE_DEVICES=1
python test.py --testing_model dataset \
--ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_0/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_dtd_rethink_zsad_seed_0 \
--testing_data dtd





export CUDA_VISIBLE_DEVICES=0
python test.py --testing_model dataset \
--ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_42/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_wfdd_rethink_zsad_seed_42 \
--testing_data wfdd

export CUDA_VISIBLE_DEVICES=3
python test.py --testing_model dataset \
--ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_42/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_ksdd2_rethink_zsad_seed_42 \
--testing_data ksdd2

export CUDA_VISIBLE_DEVICES=2
python test.py --testing_model dataset \
--ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_42/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_dtd_rethink_zsad_seed_42 \
--testing_data dtd





export CUDA_VISIBLE_DEVICES=0
python test.py --testing_model dataset \
--ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_111/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_wfdd_rethink_zsad_seed_111 \
--testing_data wfdd

export CUDA_VISIBLE_DEVICES=2
python test.py --testing_model dataset \
--ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_111/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_ksdd2_rethink_zsad_seed_111 \
--testing_data ksdd2

export CUDA_VISIBLE_DEVICES=0
python test.py --testing_model dataset \
--ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/mvtec_rethink_zsad_seed_111/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_dtd_rethink_zsad_seed_111 \
--testing_data dtd




################################## original ksdd2 wfdd dtd ########################################################
export CUDA_VISIBLE_DEVICES=0
python test.py --testing_model dataset \
--ckt_path  "/home/dell/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin_seed_0/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_wfdd_original_seed_0 \
--testing_data wfdd

export CUDA_VISIBLE_DEVICES=0
python test.py --testing_model dataset \
--ckt_path  "/home/dell/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin_seed_0/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_ksdd2_original_seed_0 \
--testing_data ksdd2

export CUDA_VISIBLE_DEVICES=1
python test.py --testing_model dataset \
--ckt_path  "/home/dell/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin_seed_0/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_dtd_original_seed_0 \
--testing_data dtd






export CUDA_VISIBLE_DEVICES=2
python test.py --testing_model dataset \
--ckt_path  "/home/dell/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin_seed_42/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_wfdd_original_seed_42 \
--testing_data wfdd

export CUDA_VISIBLE_DEVICES=3
python test.py --testing_model dataset \
--ckt_path  "/home/dell/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin_seed_42/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_ksdd2_original_seed_42 \
--testing_data ksdd2

export CUDA_VISIBLE_DEVICES=1
python test.py --testing_model dataset \
--ckt_path  "/home/dell/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin_seed_42/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_dtd_original_seed_42 \
--testing_data dtd





export CUDA_VISIBLE_DEVICES=0
python test.py --testing_model dataset \
--ckt_path  "/home/dell/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin_seed_111/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_wfdd_original_seed_111 \
--testing_data wfdd

export CUDA_VISIBLE_DEVICES=1
python test.py --testing_model dataset \
--ckt_path  "/home/dell/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin_seed_111/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_ksdd2_original_seed_111 \
--testing_data ksdd2

export CUDA_VISIBLE_DEVICES=2
python test.py --testing_model dataset \
--ckt_path  "/home/dell/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin_seed_111/origin/models/['mvtec']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_dtd_original_seed_111 \
--testing_data dtd



python test.py --testing_model dataset \
--ckt_path  "/mnt/data3/wgp3/AdaCLIP_zsad/checkpoints/visa_rethink_zsad_seed_0/origin/models/['visa']_4.pth" \
--save_fig True \
--save_path ./workspaces/results/test_time_mvtec_rethink_zsad_seed_0 \
--testing_data mvtec




