#基础镜像
FROM ubuntu:16.04

#换源 国内
#RUN \
#    echo "deb-src http://archive.ubuntu.com/ubuntu xenial main restricted" >/etc/apt/sources.list && \
#    echo "deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted" >>/etc/apt/sources.list && \
#    echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted multiverse universe" >>/etc/apt/sources.list && \
#    echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted" >>/etc/apt/sources.list && \
#    echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted multiverse universe" >>/etc/apt/sources.list && \
#    echo "deb http://mirrors.aliyun.com/ubuntu/ xenial universe" >>/etc/apt/sources.list && \
#    echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates universe" >>/etc/apt/sources.list && \
#    echo "deb http://mirrors.aliyun.com/ubuntu/ xenial multiverse" >>/etc/apt/sources.list && \
#    echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates multiverse" >>/etc/apt/sources.list && \
#    echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse" >>/etc/apt/sources.list && \
#    echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse" >>/etc/apt/sources.list && \
#    echo "deb http://archive.canonical.com/ubuntu xenial partner" >>/etc/apt/sources.list && \
#    echo "deb-src http://archive.canonical.com/ubuntu xenial partner" >>/etc/apt/sources.list && \
#    echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted" >>/etc/apt/sources.list && \
#    echo "deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted multiverse universe" >>/etc/apt/sources.list && \
#    echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security universe" >>/etc/apt/sources.list && \
#    echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security multiverse" >>/etc/apt/sources.list
RUN apt-get update  

# 配置中文语言

ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN.UTF-8
ENV LC_ALL=zh_CN.UTF-8
RUN apt-get -y install language-pack-zh-hans language-pack-zh-hans-base
RUN locale
RUN apt-get -qqy --no-install-recommends install fonts-ipafont-gothic xfonts-100dpi xfonts-75dpi xfonts-cyrillic xfonts-scalable


# 安装文泉驿微米黑字体
RUN apt-get -qqy --no-install-recommends install ttf-wqy-microhei


# 将文泉驿微米黑设置为系统默认字体
RUN ln /etc/fonts/conf.d/65-wqy-microhei.conf /etc/fonts/conf.d/69-language-selector-zh-cn.conf

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y acl adwaita-icon-theme at-spi2-core colord colord-data cpp cpp-5 dbus \
  dconf-gsettings-backend dconf-service file fontconfig fontconfig-config\
  fonts-dejavu-core fonts-freefont-ttf gconf-service gconf-service-backend\
  gconf2-common glib-networking glib-networking-common\
  glib-networking-services gsettings-desktop-schemas hicolor-icon-theme\
  humanity-icon-theme i965-va-driver ifupdown iproute2 isc-dhcp-client\
  isc-dhcp-common krb5-locales liba52-0.7.4 libaa1 libaacs0 libasn1-8-heimdal\
  libasound2 libasound2-data libass5 libasyncns0 libatk-bridge2.0-0\
  libatk1.0-0 libatk1.0-data libatm1 libatspi2.0-0 libauthen-sasl-perl\
  libavahi-client3 libavahi-common-data libavahi-common3 libavc1394-0\
  libavcodec-ffmpeg56 libavformat-ffmpeg56 libavutil-ffmpeg54\
  libbasicusageenvironment1 libbdplus0 libbluray1 libboost-filesystem1.58.0\
  libboost-system1.58.0 libbsd0 libcaca0 libcairo-gobject2 libcairo2\
  libcap-ng0 libcapnp-0.5.3 libcddb2 libcdio13 libchromaprint0 libcolord2\
  libcolorhug2 libcroco3 libcrystalhd3 libcups2 libdatrie1 libdbus-1-3\
  libdbus-glib-1-2 libdc1394-22 libdca0 libdconf1 libdirectfb-1.2-9\
  libdns-export162 libdrm-amdgpu1 libdrm-common libdrm-intel1 libdrm-nouveau2\
  libdrm-radeon1 libdrm2 libdvbpsi10 libdvdnav4 libdvdread4 libebml4v5\
  libedit2 libegl1-mesa libelf1 libencode-locale-perl libepoxy0 libevdev2\
  libexif12 libexpat1 libfaad2 libffi6 libfile-basedir-perl\
  libfile-desktopentry-perl libfile-listing-perl libfile-mimeinfo-perl\
  libflac8 libfont-afm-perl libfontconfig1 libfontenc1 libfreerdp-cache1.1\
  libfreerdp-client1.1 libfreerdp-codec1.1 libfreerdp-common1.1.0\
  libfreerdp-core1.1 libfreerdp-crypto1.1 libfreerdp-gdi1.1\
  libfreerdp-locale1.1 libfreerdp-primitives1.1 libfreerdp-utils1.1\
  libfreetype6 libfribidi0 libgbm1 libgconf-2-4 libgd3 libgdbm3\
  libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libgl1-mesa-dri libgl1-mesa-glx\
  libglapi-mesa libgles2-mesa libglib2.0-0 libglib2.0-data libgme0 libgmp10\
  libgnutls30 libgomp1 libgphoto2-6 libgphoto2-l10n libgphoto2-port12 libgpm2\
  libgraphite2-3 libgroupsock8 libgsm1 libgssapi-krb5-2 libgssapi3-heimdal\
  libgtk-3-0 libgtk-3-bin libgtk-3-common libgtk2.0-0 libgtk2.0-bin\
  libgtk2.0-common libgudev-1.0-0 libgusb2 libharfbuzz0b libhcrypto4-heimdal\
  libheimbase1-heimdal libheimntlm0-heimdal libhogweed4 libhtml-form-perl\
  libhtml-format-perl libhtml-parser-perl libhtml-tagset-perl\
  libhtml-tree-perl libhttp-cookies-perl libhttp-daemon-perl libhttp-date-perl\
  libhttp-message-perl libhttp-negotiate-perl libhx509-5-heimdal libice6\
  libicu55 libieee1284-3 libinput-bin libinput10 libio-html-perl\
  libio-socket-ssl-perl libipc-system-simple-perl libisc-export160 libisl15\
  libiso9660-8 libjbig0 libjpeg-turbo8 libjpeg8 libjson-c2 libjson-glib-1.0-0\
  libjson-glib-1.0-common libk5crypto3 libkate1 libkeyutils1\
  libkrb5-26-heimdal libkrb5-3 libkrb5support0 liblcms2-2 libldap-2.4-2\
  libldb1 liblircclient0 liblivemedia50 libllvm6.0 libltdl7 liblua5.2-0\
  liblwp-mediatypes-perl liblwp-protocol-https-perl libmad0 libmagic1\
  libmailtools-perl libmatroska6v5 libmirclient9 libmircommon7 libmircore1\
  libmirprotobuf3 libmnl0 libmodplug1 libmp3lame0 libmpc3 libmpcdec6\
  libmpeg2-4 libmpfr4 libmtdev1 libmtp-common libmtp-runtime libmtp9\
  libnet-dbus-perl libnet-http-perl libnet-smtp-ssl-perl libnet-ssleay-perl\
  libnettle6 libnotify4 libnspr4 libnss3 libnss3-nssdb libnuma1 libogg0\
  libopenjpeg5 libopus0 liborc-0.4-0 libp11-kit0 libpam-systemd libpango-1.0-0\
  libpangocairo-1.0-0 libpangoft2-1.0-0 libpciaccess0 libpcre16-3 libperl5.22\
  libpixman-1-0 libpng12-0 libpolkit-agent-1-0 libpolkit-backend-1-0\
  libpolkit-gobject-1-0 libpopt0 libpostproc-ffmpeg53 libprotobuf-lite9v5\
  libproxy-tools libproxy1v5 libpulse0 libpython-stdlib libpython2.7\
  libpython2.7-minimal libpython2.7-stdlib libqt5core5a libqt5dbus5 libqt5gui5\
  libqt5network5 libqt5svg5 libqt5widgets5 libqt5x11extras5 libraw1394-11\
  libresid-builder0c2a librest-0.7-0 libroken18-heimdal librsvg2-2\
  librsvg2-common librtmp1 libsamplerate0 libsane libsane-common libsasl2-2\
  libsasl2-modules libsasl2-modules-db libschroedinger-1.0-0 libsdl-image1.2\
  libsdl1.2debian libsensors4 libshine3 libshout3 libsidplay2v5 libslang2\
  libsm6 libsmbclient libsnappy1v5 libsndfile1 libsoup-gnome2.4-1 libsoup2.4-1\
  libsoxr0 libspeex1 libspeexdsp1 libsqlite3-0 libssh-gcrypt-4 libssh2-1\
  libswresample-ffmpeg1 libswscale-ffmpeg3 libtag1v5 libtag1v5-vanilla\
  libtalloc2 libtasn1-6 libtdb1 libtevent0 libtext-iconv-perl libthai-data\
  libthai0 libtheora0 libtie-ixhash-perl libtiff5 libtimedate-perl libtwolame0\
  libtxc-dxtn-s2tc0 libupnp6 liburi-perl libusageenvironment3 libusb-1.0-0\
  libva-drm1 libva-x11-1 libva1 libvcdinfo0 libvlc5 libvlccore8 libvncclient1\
  libvorbis0a libvorbisenc2 libvpx3 libwacom-bin libwacom-common libwacom2\
  libwavpack1 libwayland-client0 libwayland-cursor0 libwayland-egl1-mesa\
  libwayland-server0 libwbclient0 libwebp5 libwind0-heimdal libwinpr-crt0.1\
  libwinpr-dsparse0.1 libwinpr-environment0.1 libwinpr-file0.1\
  libwinpr-handle0.1 libwinpr-heap0.1 libwinpr-input0.1\
  libwinpr-interlocked0.1 libwinpr-library0.1 libwinpr-path0.1\
  libwinpr-pool0.1 libwinpr-registry0.1 libwinpr-rpc0.1 libwinpr-sspi0.1\
  libwinpr-synch0.1 libwinpr-sysinfo0.1 libwinpr-thread0.1 libwinpr-utils0.1\
  libwrap0 libwww-perl libwww-robotrules-perl libx11-6 libx11-data\
  libx11-protocol-perl libx11-xcb1 libx264-148 libx265-79 libxau6 libxaw7\
  libxcb-composite0 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0 libxcb-icccm4\
  libxcb-image0 libxcb-keysyms1 libxcb-present0 libxcb-randr0\
  libxcb-render-util0 libxcb-render0 libxcb-shape0 libxcb-shm0 libxcb-sync1\
  libxcb-util1 libxcb-xfixes0 libxcb-xkb1 libxcb-xv0 libxcb1 libxcomposite1\
  libxcursor1 libxdamage1 libxdmcp6 libxext6 libxfixes3 libxft2 libxi6\
  libxinerama1 libxkbcommon-x11-0 libxkbcommon0 libxkbfile1 libxml-parser-perl\
  libxml-twig-perl libxml-xpathengine-perl libxml2 libxmu6 libxmuu1 libxpm4\
  libxrandr2 libxrender1 libxshmfence1 libxss1 libxt6 libxtables11 libxtst6\
  libxv1 libxvidcore4 libxxf86dga1 libxxf86vm1 libzvbi-common libzvbi0\
  mesa-va-drivers mime-support netbase notification-daemon perl\
  perl-modules-5.22 policykit-1 python python-minimal python-talloc python2.7\
  python2.7-minimal qttranslations5-l10n rename samba-libs sgml-base\
  shared-mime-info tcpd ubuntu-mono ucf udev va-driver-all vlc vlc-data\
  vlc-nox vlc-plugin-notify vlc-plugin-samba x11-common x11-utils\
  x11-xserver-utils xdg-user-dirs xdg-utils xkb-data xml-core

RUN wget http://d1.music.126.net/dmusic/netease-cloud-music_1.1.0_amd64_ubuntu.deb
RUN dpkg -i netease-cloud-music_1.1.0_amd64_ubuntu.deb


