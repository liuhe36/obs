FROM jlesage/baseimage-gui:ubuntu-18.04
MAINTAINER iaroki
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:obsproject/obs-studio -y && \
    add-apt-repository ppa:paulo-miguel-dias/pkppa -y && \
    apt update && \
    apt install ffmpeg obs-studio=27.2.4-0obsproject1~bionic mesa-utils -y && \
    apt clean
COPY startapp.sh /startapp.sh
#CMD ["obs"]
