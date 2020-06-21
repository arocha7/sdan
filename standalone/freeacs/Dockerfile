FROM centos:centos7.8.2003
MAINTAINER alberto-m-rocha@alticelabs.com
RUN yum update -y && \
    yum install -y redhat-lsb-core && \
    yum install -y wget && \
    wget https://raw.githubusercontent.com/freeacs/freeacs/master/scripts/install_centos.sh -v -O install_centos.sh && \
    chmod +x install_centos.sh && \
    yes | ./install_centos.sh;
CMD tail -f /dev/null
