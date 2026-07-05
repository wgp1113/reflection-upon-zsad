for i in {1..15};do
  python test.py --dataset visa \
  --data_path  /home/dell/wgp/datasets/VisA \
  --save_path ./results/visa_origin/9_12_4_multiscale/zero_shot_${i} \
  --checkpoint_path ./checkpoints/mvtec_origin/epoch_${i}.pth \
  --features_list 24 --image_size 518 \
  --depth 9 --n_ctx 12 --t_n_ctx 4
done


python test.py --dataset visa \
--data_path  /home/dell/wgp/datasets/VisA \
--save_path ./results/visa_origin_seed_111/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_origin_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4


python test.py --dataset visa --data_path  /home/dell/wgp/datasets/VisA --save_path ./results/visa_origin_seed_111/9_12_4_multiscale/zero_shot_15 --checkpoint_path ./checkpoints/mvtec_origin_seed_111/epoch_15.pth --features_list 24 --image_size 518 --depth 9 --n_ctx 12 --t_n_ctx 4