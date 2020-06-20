FROM ubuntu:bionic
MAINTAINER alberto-m-rocha@alticelabs.com
RUN apt update -y && \
    apt install -y lsb-core && \
    apt install -y wget && \
    wget https://raw.githubusercontent.com/freeacs/freeacs/master/scripts/install.sh -v -O install.sh && \
    chmod +x install.sh && \
    yes | ./install.sh;
EXPOSE 80
CMD tail -f /dev/null
