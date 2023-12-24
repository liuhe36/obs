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
    apt-get -y install qt5-default  && \
    apt clean  
RUN apt update && \
    add-apt-repository ppa:obsproject/obs-studio -y && \
    apt update &&\
    apt install vlc obs-studio -y && \
    apt clean
    
ENV LIBVA_DRIVER_NAME=iHD
COPY startapp.sh /startapp.sh
#CMD ["obs"]
#update 20231008
