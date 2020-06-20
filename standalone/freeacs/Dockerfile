FROM centos:centos7.8.2003
MAINTAINER alberto-m-rocha@alticelabs.com
RUN yum update && \
    wget https://raw.githubusercontent.com/freeacs/freeacs/master/scripts/install_centos.sh -v -O install_centos.sh && \
    chmod +x install_centos.sh && \
    ./install_centos.sh;
CMD tail -f /dev/null
