FROM jlesage/baseimage-gui:ubuntu-16.04
MAINTAINER iaroki
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:obsproject/obs-studio -y && \
    apt update && \
    apt clean
COPY startapp.sh /startapp.sh
#CMD ["obs"]
