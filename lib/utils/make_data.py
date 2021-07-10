import os
from tqdm import tqdm
from random import shuffle
from shutil import move

if __name__ == '__main__':

    base = 'data/dtd/images'
    labels = sorted(os.listdir(base))

    split = 0.8
    out = 'data/DTD'

    for lbl in labels:
        
        lbl_base = os.path.join(base, lbl)
        
        images = os.listdir(lbl_base)
        shuffle(images)

        train_num = int(split * len(images))

        dst = os.path.join(out, 'train', lbl)
        if not os.path.exists(dst):
            os.makedirs(dst)
        for img in tqdm(images[:train_num]):
            src = os.path.join(lbl_base, img)
            move(src, dst)
        dst = os.path.join(out, 'val', lbl)
        if not os.path.exists(dst):
            os.makedirs(dst)
        for img in tqdm(images[train_num:]):
            src = os.path.join(lbl_base, img)
            move(src, dst)