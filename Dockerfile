FROM jlesage/baseimage-gui:ubuntu-20.04
ENV DEBIAN_FRONTEND=noninteractive
MAINTAINER liu
RUN  apt update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:obsproject/obs-studio -y && \
    apt update && \
    apt install ffmpeg obs-studio intel-media-va-driver-non-free -y && \
    apt clean
COPY startapp.sh /startapp.sh
#CMD ["obs"]
