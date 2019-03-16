
xhost +
docker run -itv /home/hukcc/floder_to_images/ros:/My_codes --device=/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE ros:kinetic-ros-base  /bin/bash

