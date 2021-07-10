export CUDA_VISIBLE_DEVICES=1
python pretrain.py --data data/DTD \
    --data_name DTD --pretrained --arch mobilenet_v3 \
    --gpu_id 0 --warmup_epoch 5 --lr 0.02 --epochs 50
# python pretrain.py --data data/DTD \
#     --data_name DTD --pretrained --arch mobilenet_v3 \
#     --evaluate --gpu_id 0