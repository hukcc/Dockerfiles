#! /bin/bash

docker run -it --name tf-py3 -v /home/hu/mnist/:/home/hukcc/mnist/ --runtime=nvidia -e NVIDIA_VISIBLE_DEVICE=0,1 nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04