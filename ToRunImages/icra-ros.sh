#!/bin/sh

COMMAND=/bin/bash 

xhost + # allow connections to X server
docker run --name icra_dev -v /home/hukcc/floder_to_images/test_temp:/My_codes --privileged -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw"  -i -t hukcc/icra:ssh-can-not-run-core-itself $COMMAND
