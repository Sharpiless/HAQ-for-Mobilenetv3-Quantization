export CUDA_VISIBLE_DEVICES=1
python -W ignore rl_quantize.py     \
 --arch mobilenet_v3                \
 --dataset DTD              \
 --dataset_root data/DTD    \
 --suffix ratio0556bit28            \
 --preserve_ratio 0.556             \
 --float_bit 8                      \
 --max_bit 8                        \
 --min_bit 2                        \
 --n_worker 8                      \
 --data_bsize 32                   \
 --train_size 3384                 \
 --val_size 1128                   \
 --output ./save                   \
 --pretrained checkpoint/model_best.pth.tar
# 68.79432618702558