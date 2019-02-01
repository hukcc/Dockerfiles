#! /bin/bash

nvidia-docker run -it --name cuda9.1-cudnn -v /home/hukcc/floder_to_images/cuda9.2:/My_codes --runtime=nvidia -e NVIDIA_VISIBLE_DEVICE=0,1 nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04 /bin/bash