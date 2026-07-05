for i in {1..15};do
  python test.py --dataset mvtec \
  --data_path  /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
  --save_path ./results/mvtec_origin/9_12_4_multiscale/zero_shot_${i} \
  --checkpoint_path ./checkpoints/visa_origin/epoch_${i}.pth \
  --features_list 24 --image_size 518 \
  --depth 9 --n_ctx 12 --t_n_ctx 4
done


python test.py --dataset mvtec \
--data_path  /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--save_path ./results/mvtec_origin_seed_111/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/visa_origin_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4