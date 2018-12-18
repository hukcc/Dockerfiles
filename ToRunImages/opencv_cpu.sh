#！/bin/bash

xhost +
#docker run 可选项 开启外界摄像头以及串口
#--device=/dev/video1

docker run -itv /home/hukcc/floder_to_images/opencv_cpu:/RMcodes  --device=/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE --user="root"  hukcc/opencv_cpu /bin/bash
