export CUDA_VISIBLE_DEVICES=1
python -W ignore rl_quantize.py     \
 --arch resnet50                    \
 --dataset imagenet                 \
 --suffix ratio010                  \
 --preserve_ratio 0.1               \
 --n_worker 32                      \
 --data_bsize 256                   \
 --train_size 20000                 \
 --val_size 10000                   \
 --output ./save                   \
