
xhost +
docker run -itv /home/hukcc/code:/home --device=/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE  hukcc/opencv_cpu /bin/bash

