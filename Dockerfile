FROM jlesage/baseimage-gui:ubuntu-20.04
ENV DEBIAN_FRONTEND=noninteractive
MAINTAINER liu

RUN apt update && \
    apt install software-properties-common aptitude -y && \
    add-apt-repository ppa:savoury1/ffmpeg5 -y && \
    apt update && \
    apt upgrade -y && \
    aptitude install libmfx1 libmfx-tools libva-drm2 libva-x11-2 libva-wayland2 libva-glx2 vainfo mesa-utils intel-media-va-driver-non-free -y && \
    aptitude install mediainfo ffmpeg -y && \
    apt clean
    
RUN apt update && \
    add-apt-repository ppa:obsproject/obs-studio -y && \
    apt update && \
    apt upgrade -y && \
    aptitude install vlc obs-studio -y && \
    apt clean
    
ENV LIBVA_DRIVER_NAME=iHD
COPY startapp.sh /startapp.sh
#CMD ["obs"]
