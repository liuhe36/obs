FROM ubuntu:18.04
MAINTAINER iaroki
RUN apt update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:obsproject/obs-studio -y && \
    wget --no-check-certificate https://download.01.org/gfx/RPM-GPG-KEY-ilg-4 -O - | sudo apt-key add - && \    
    apt update && apt-get upgrade \
    apt install ffmpeg obs-studio intel-graphics-update-tool -y && \
    apt clean
CMD ["obs"]
