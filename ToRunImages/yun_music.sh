#! /bin/bash
xhost +


#docker run -it  -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE  hukcc/yun_music /bin/bash

#docker run -it \ 
#    -v /tmp/.X11-unix:/tmp/.X11-unix \ # mount the X11 socket
#    -e DISPLAY=unix$DISPLAY \ # pass the display
#    -e GDK_SCALE \ #
#    -e GDK_DPI_SCALE \ #
#    -v /dev/snd:/dev/snd --privileged \ # sound
#    hukcc/yun_music \ #
#    /bin/bash

docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE -v /dev/snd:/dev/snd --privileged hukcc/yun_music /bin/bash