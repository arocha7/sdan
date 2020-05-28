#!/bin/bash
docker network create graynet

sudo sysctl net.ipv4.conf.all.forwarding=1

sudo iptables -P FORWARD ACCEPT

sudo iptables -P INPUT ACCEPT

# https://docs.docker.com/network/#enable-forwarding-from-docker-containers-to-the-outside-world
