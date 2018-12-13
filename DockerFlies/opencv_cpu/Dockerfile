FROM ubuntu:16.04

RUN  apt-get update
RUN  apt-get upgrade -y

 
# Install pip
RUN apt-get install -y wget vim

 

# Install cmake
RUN apt-get update

RUN apt-get install -y build-essential libgtk2.0-dev libavcodec-dev libavformat-dev libjpeg.dev libtiff4.dev libswscale-dev libjasper-dev  
RUN apt-get install -y cmake
 
# Install OpenCV
RUN apt-get install -y unzip
RUN wget -P /usr/local/src/ https://github.com/opencv/opencv/archive/3.4.1.zip
RUN cd /usr/local/src/ && unzip 3.4.1.zip && rm 3.4.1.zip
RUN cd /usr/local/src/opencv-3.4.1/ && mkdir build
RUN cd /usr/local/src/opencv-3.4.1/build && cmake -D CMAKE_INSTALL_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local/ .. && make -j4 && make install
  
RUN wget -P /soft https://vscode.cdn.azure.cn/stable/c6e592b2b5770e40a98cb9c2715a8ef89aec3d74/code_1.30.0-1544567151_amd64.deb

#ADD sources.list /etc/apt/
RUN apt-get install acl adwaita-icon-theme at-spi2-core colord colord-data dconf-gsettings-backend dconf-service gconf-service gconf-service-backend gconf2-common glib-networking glib-networking-common glib-networking-services gsettings-desktop-schemas humanity-icon-theme  libatk-bridge2.0-0 libatspi2.0-0 libboost-filesystem1.58.0  libboost-system1.58.0 libcapnp-0.5.3 libcolord2 libcolorhug2  libdbus-glib-1-2 libdconf1 libegl1-mesa libepoxy0 libexif12 libgbm1  libgconf-2-4 libgd3 libgl1-mesa-dri libglapi-mesa libgphoto2-6  libgphoto2-l10n libgphoto2-port12 libgtk-3-0 libgtk-3-bin libgtk-3-common  libgudev-1.0-0 libgusb2 libieee1284-3 libjson-glib-1.0-0  libjson-glib-1.0-common liblcms2-2 libltdl7 libmirclient9 libmircommon7  libmircore1 libmirprotobuf3 libnotify4 libnspr4 libnss3 libnss3-nssdb  libpam-systemd libpolkit-agent-1-0 libpolkit-backend-1-0  libpolkit-gobject-1-0 libprotobuf-lite9v5 libproxy1v5 librest-0.7-0  librsvg2-2 librsvg2-common libsane libsane-common libsecret-1-0  libsecret-common libsoup-gnome2.4-1 libsoup2.4-1 libtxc-dxtn-s2tc0  libusb-1.0-0 libwayland-client0 libwayland-cursor0 libwayland-egl1-mesa  libwayland-server0 libxkbcommon0 libxkbfile1 libxpm4 libxss1 libxtst6  notification-daemon policykit-1 ubuntu-mono xkb-data
RUN apt-get install -y libasound-dev
RUN cd /soft && dpkg -i code_1.30.0-1544567151_amd64.deb

#USER hukcc
RUN useradd --create-home --no-log-init --shell /bin/bash mynewuser
RUN adduser mynewuser sudo
RUN echo 'mynewuser:123' | chpasswd
USER mynewuser


