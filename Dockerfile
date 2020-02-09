FROM ubuntu:18.04
MAINTAINER iaroki
RUN apt update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:obsproject/obs-studio -y && \
    add-apt-repository ppa:oibaf/graphics-drivers -y && \
    apt install wget -y && \
    apt update && apt-get upgrade \
    apt install ffmpeg obs-studio xserver-xorg-video-intel mesa-utils -y && \
    apt clean
CMD ["obs"]
