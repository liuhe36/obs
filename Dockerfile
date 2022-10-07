FROM jlesage/baseimage-gui:ubuntu-18.04
MAINTAINER iaroki
RUN DEBIAN_FRONTEND=noninteractive && apt update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:obsproject/obs-studio -y && \
    add-apt-repository ppa:oibaf/graphics-drivers -y && \
    apt update && \
    apt install ffmpeg obs-studio=27.2.4-0obsproject1~bionic xserver-xorg-video-intel mesa-utils -y && \
    apt clean
COPY startapp.sh /startapp.sh
#CMD ["obs"]
