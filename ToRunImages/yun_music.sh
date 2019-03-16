#! /bin/bash
xhost +

#docker run -it --name netnase-cloud-music -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE --device=/dev --privileged hukcc/soft:netnase-cloud-music-withoutHardareAc /bin/bash
#上面那条不推荐用 很慢
docker run -it --name netnase-cloud-music -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE -v /dev/snd:/dev/snd --privileged hukcc/soft:netnase-cloud-music-withoutHardareAc /bin/bash