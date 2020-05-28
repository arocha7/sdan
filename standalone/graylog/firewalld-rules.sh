#!/bin/bash

# GELF
sudo firewall-cmd --zone=public --add-port=12201/udp --permanent
sudo firewall-cmd --zone=public --add-port=12201/tcp --permanent

# SYSLOG
sudo firewall-cmd --zone=public --add-port=1514/udp --permanent
sudo firewall-cmd --zone=public --add-port=1514/tcp --permanent

sudo iptables -t nat -A PREROUTING -p udp --dport 514 -j REDIRECT --to 1514
sudo iptables -t nat -A PREROUTING -p tcp --dport 514 -j REDIRECT --to 1514
# https://docs.graylog.org/en/3.1/pages/faq.html#how-can-i-start-an-input-on-a-port-below-1024

sudo firewall-cmd --reload
