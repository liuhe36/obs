FROM ubuntu:20.04
MAINTAINER iaroki
RUN apt update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:obsproject/obs-studio -y && \
    apt update && \
    apt install ffmpeg obs-studio -y && \
    apt clean
CMD ["bash"]
