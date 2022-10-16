FROM jlesage/baseimage-gui:ubuntu-20.04
ENV DEBIAN_FRONTEND=noninteractive
MAINTAINER liu
RUN  apt update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:obsproject/obs-studio -y && \
    add-apt-repository ppa:savoury1/ffmpeg4 -y && \
    apt update && \
    apt install libmfx1 libmfx-tools libva-drm2 libva-x11-2 libva-wayland2 libva-glx2 vainfo -y && \
    apt install ffmpeg obs-studio intel-media-va-driver-non-free -y && \
    apt install snapd -y && \
    snap install vlc -y && \
    apt clean
ENV LIBVA_DRIVER_NAME=iHD
COPY startapp.sh /startapp.sh
#CMD ["obs"]
