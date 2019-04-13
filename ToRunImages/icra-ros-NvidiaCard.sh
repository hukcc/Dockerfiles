#!/bin/sh

COMMAND=/bin/bash 

xhost + # allow connections to X server
docker run -d --network host --name icra_Nvidia -v /home/hukcc/floder_to_images/ros_nvidia:/My_codes --privileged -v /dev:/dev -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw"  -i -t hukcc/icra:nvidiaCardVersion-dev-GeForce1060-390.116 $COMMAND
