#! /bin/bash
xhost +

nvidia-docker run -it --name tf1.8 -v /home/hukcc/floder_to_images/tf1.8:/My_codes --runtime=nvidia -e NVIDIA_VISIBLE_DEVICE=0,1 --device=/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE hukcc/tf1.8 /bin/bash