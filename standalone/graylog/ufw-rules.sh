#!/bin/bash

###
# Local firewall: UFW
# Guide: https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-18-04
###

# GELF
sudo ufw allow 12201/udp
sudo ufw allow 12201/tcp


# SYSLOG
sudo ufw allow 1514/udp
sudo ufw allow 1514/tcp


###
# IPTABLES
###

sudo iptables -t nat -A PREROUTING -p udp --dport 514 -j REDIRECT --to 1514
sudo iptables -t nat -A PREROUTING -p tcp --dport 514 -j REDIRECT --to 1514
# https://docs.graylog.org/en/3.1/pages/faq.html#how-can-i-start-an-input-on-a-port-below-1024

sudo ufw enable

sudo ufw status verbose

