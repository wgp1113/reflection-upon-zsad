#device=0
#
#LOG=${save_dir}"res.log"
#echo ${LOG}
#depth=(9)
#n_ctx=(12)
#t_n_ctx=(4)
#for i in "${!depth[@]}";do
#    for j in "${!n_ctx[@]}";do
#    ## train on the VisA dataset
#        base_dir=trained_on_mvtecad
#        save_dir=./checkpoints/${base_dir}/
#        CUDA_VISIBLE_DEVICES=${device} python train.py --dataset mvtecad --train_data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
#        --save_path ${save_dir} \
#        --features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
#        --epoch 15 --save_freq 1 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
#    wait
#    done
#done



#/home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection

#device=1
#
#LOG=${save_dir}"res.log"
#echo ${LOG}
#depth=(9)
#n_ctx=(12)
#t_n_ctx=(4)
#for i in "${!depth[@]}";do
#    for j in "${!n_ctx[@]}";do
#    ## train on the VisA dataset
#        base_dir=trained_on_visa_original_seed_111
#        save_dir=./checkpoints/${base_dir}/
#        CUDA_VISIBLE_DEVICES=${device} python train.py --dataset visa --train_data_path /home/dell/wgp/datasets/VisA \
#        --save_path ${save_dir} \
#        --features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
#        --epoch 15 --save_freq 1 --seed 111 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
#    wait
#    done
#done

#LOG=${save_dir}"res.log"
#echo ${LOG}
#depth=(9)
#n_ctx=(12)
#t_n_ctx=(4)
#for i in "${!depth[@]}";do
#    for j in "${!n_ctx[@]}";do
#    ## train on the VisA dataset
#        base_dir=trained_on_visa
#        save_dir=./checkpoints/${base_dir}/
#        CUDA_VISIBLE_DEVICES=${device} python train_cls.py --dataset visa --train_data_path /home/zhujiawen/PDA/data/visa_anomaly_detection/visa \
#        --save_path ${save_dir} \
#        --features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
#        --epoch 15 --save_freq 1 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
#    wait
#    done
#done


---------------------------------------------------------------------------------------------------------------------------
device=0
LOG=${save_dir}"res.log"
echo ${LOG}
depth=(9)
n_ctx=(12)
t_n_ctx=(4)
for i in "${!depth[@]}";do
    for j in "${!n_ctx[@]}";do
        base_dir=trained_on_mvtec_original_seed_111
        save_dir=./checkpoints/${base_dir}/
        CUDA_VISIBLE_DEVICES=${device} python train.py --dataset mvtec \
        --train_data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
        --save_path ${save_dir} \
        --features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
        --epoch 15 --save_freq 1 --seed 111 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
    wait
    done
done

device=1
LOG=${save_dir}"res.log"
echo ${LOG}
depth=(9)
n_ctx=(12)
t_n_ctx=(4)
for i in "${!depth[@]}";do
    for j in "${!n_ctx[@]}";do
    ## train on the VisA dataset
        base_dir=trained_on_visa_original_seed_111
        save_dir=./checkpoints/${base_dir}/
        CUDA_VISIBLE_DEVICES=${device} python train.py --dataset visa --train_data_path /home/dell/wgp/datasets/VisA \
        --save_path ${save_dir} \
        --features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
        --epoch 15 --save_freq 1 --seed 111 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
    wait
    done
done





device=2
LOG=${save_dir}"res.log"
echo ${LOG}
depth=(9)
n_ctx=(12)
t_n_ctx=(4)
for i in "${!depth[@]}";do
    for j in "${!n_ctx[@]}";do
        base_dir=trained_on_mvtec_original_seed_42
        save_dir=./checkpoints/${base_dir}/
        CUDA_VISIBLE_DEVICES=${device} python train.py --dataset mvtec \
        --train_data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
        --save_path ${save_dir} \
        --features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
        --epoch 15 --save_freq 1 --seed 42 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
    wait
    done
done

device=0
LOG=${save_dir}"res.log"
echo ${LOG}
depth=(9)
n_ctx=(12)
t_n_ctx=(4)
for i in "${!depth[@]}";do
    for j in "${!n_ctx[@]}";do
    ## train on the VisA dataset
        base_dir=trained_on_visa_original_seed_42
        save_dir=./checkpoints/${base_dir}/
        CUDA_VISIBLE_DEVICES=${device} python train.py --dataset visa --train_data_path /home/dell/wgp/datasets/VisA \
        --save_path ${save_dir} \
        --features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
        --epoch 15 --save_freq 1 --seed 42 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
    wait
    done
done







device=1
LOG=${save_dir}"res.log"
echo ${LOG}
depth=(9)
n_ctx=(12)
t_n_ctx=(4)
for i in "${!depth[@]}";do
    for j in "${!n_ctx[@]}";do
        base_dir=trained_on_mvtec_original_seed_0
        save_dir=./checkpoints/${base_dir}/
        CUDA_VISIBLE_DEVICES=${device} python train.py --dataset mvtec \
        --train_data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
        --save_path ${save_dir} \
        --features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
        --epoch 15 --save_freq 1 --seed 0 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
    wait
    done
done

device=2
LOG=${save_dir}"res.log"
echo ${LOG}
depth=(9)
n_ctx=(12)
t_n_ctx=(4)
for i in "${!depth[@]}";do
    for j in "${!n_ctx[@]}";do
    ## train on the VisA dataset
        base_dir=trained_on_visa_original_seed_0
        save_dir=./checkpoints/${base_dir}/
        CUDA_VISIBLE_DEVICES=${device} python train.py --dataset visa --train_data_path /home/dell/wgp/datasets/VisA \
        --save_path ${save_dir} \
        --features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
        --epoch 15 --save_freq 1 --seed 0 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
    wait
    done
done


----------------------------------------------------------------------------------------------------------------------------
export CUDA_VISIBLE_DEVICES=0
python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--save_path ./checkpoints/trained_on_mvtec_rethink_zsad_seed_0 \
--features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
--epoch 15 --save_freq 1 --seed 0 --depth 9 --n_ctx 12 --t_n_ctx 4


export CUDA_VISIBLE_DEVICES=1
python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--save_path ./checkpoints/trained_on_visa_rethink_zsad_seed_0 \
--features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
--epoch 15 --save_freq 1 --seed 0 --depth 9 --n_ctx 12 --t_n_ctx 4





export CUDA_VISIBLE_DEVICES=2
python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--save_path ./checkpoints/trained_on_mvtec_rethink_zsad_seed_42 \
--features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
--epoch 15 --save_freq 1 --seed 42 --depth 9 --n_ctx 12 --t_n_ctx 4


export CUDA_VISIBLE_DEVICES=3
python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--save_path ./checkpoints/trained_on_visa_rethink_zsad_seed_42 \
--features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
--epoch 15 --save_freq 1 --seed 42 --depth 9 --n_ctx 12 --t_n_ctx 4







export CUDA_VISIBLE_DEVICES=0
python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection \
--save_path ./checkpoints/trained_on_mvtec_rethink_zsad_seed_111 \
--features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
--epoch 15 --save_freq 1 --seed 111 --depth 9 --n_ctx 12 --t_n_ctx 4


export CUDA_VISIBLE_DEVICES=1
python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/rethink_zsad_datasets/visa \
--save_path ./checkpoints/trained_on_visa_rethink_zsad_seed_111 \
--features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
--epoch 15 --save_freq 1 --seed 111 --depth 9 --n_ctx 12 --t_n_ctx 4



##############################################
export CUDA_VISIBLE_DEVICES=2
python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection_12 \
--save_path ./checkpoints/trained_on_mvtec_12_seed_0 \
--features_list 6 12 18 24 --image_size 518  --batch_size 8 --print_freq 1 \
--epoch 15 --save_freq 1 --seed 0 --depth 9 --n_ctx 12 --t_n_ctx 4








