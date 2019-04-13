#!/bin/sh

COMMAND=/bin/bash 

xhost + # allow connections to X server
docker run -d --network host --name icra_vision -v /home/hukcc/floder_to_images/test_temp:/My_codes --privileged -v /dev:/dev -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw"  -i -t hukcc/icra:dev $COMMAND
