#!/bin/sh

COMMAND=/bin/bash

xhost + # allow connections to X server
docker run -v /home/hukcc/floder_to_images/ros_nvidia:/My_codes -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" --privileged  -i -t hukcc/icra:nvidiaCardVersion-dev-GeForce1060-390.116 $COMMAND
