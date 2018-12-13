#！/bin/bash

xhost +


docker run -itv /home/hukcc/floder_to_images:/home --device=/dev/video1 --device=/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE --user="root"  hukcc/opencv_cpu /bin/bash
