FROM jlesage/baseimage-gui:ubuntu-18.04
ENV DEBIAN_FRONTEND=noninteractive
MAINTAINER liu

RUN apt update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:savoury1/ffmpeg4 -y && \
    apt update && apt upgrade -y && apt dist-upgrade -y &&\
    apt install libmfx1 libmfx-tools libva-drm2 libva-x11-2 libva-wayland2 libva-glx2 vainfo mesa-utils intel-media-va-driver-non-free -y && \
    apt install mediainfo ffmpeg -y && \
    apt clean
RUN apt update && \
    apt-get -y install qt5-default language-pack-zh-hans && \
    apt clean  
RUN apt update && \
    add-apt-repository ppa:obsproject/obs-studio -y && \
    apt update &&\
    apt install vlc obs-studio -y && \
    apt clean
    
ENV LIBVA_DRIVER_NAME=iHD
ENV USER_ID=0 
ENV GROUP_ID=0 
ENV TZ=Asia/Shanghai 
ENV KEEP_APP_RUNNING=1 
ENV ENABLE_CJK_FONT=1 
ENV LANG=zh_CN.UTF-8 
ENV DISPLAY_WIDTH=1920 
ENV DISPLAY_HEIGHT=1080 
COPY startapp.sh /startapp.sh
#CMD ["obs"]
#update 20231225
