#! /bin/bash

xhost +

nvidia-docker run -it -d --network host --name lipreading_pytorch -v /home/hukcc/floder_to_images/lipreading:/My_codes --runtime=nvidia -e NVIDIA_VISIBLE_DEVICE=0,1 --privileged -v /dev:/dev -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE hukcc/lipreading:pytorch-dev /bin/bash
