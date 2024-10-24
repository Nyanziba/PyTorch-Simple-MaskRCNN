#!/bin/bash


dataset="coco"
iters=500

if [ $dataset = "voc" ]
then
    data_dir="/data/voc2012/VOCdevkit/VOC2012/"
elif [ $dataset = "coco" ]
then
    data_dir="/Users/nyanziba/Assignment/PyTorch-Simple-MaskRCNN/image"
fi


python train.py --use-cuda --iters ${iters} --dataset ${dataset} --data-dir ${data_dir}

