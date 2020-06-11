# Intro
A Docker Compose to deploy Graylog with Elasticsearch, MongoDB and Grafana.

# Configuration 

Set the IP address of the host machine where you are running Graylog - ex:

```GRAYLOG_HTTP_EXTERNAL_URI=http://IPADDR:9000/```

# Open Firewall ports at the Host machine

* CentOS 7

```./firewalld-rules.sh```

* Ubuntu 16.04/18.04

```./ufw-rules.sh```

The list of openned ports are:

```
      # Graylog web interface and REST API
      - 9000:9000
      # Syslog TCP
      - 1514:1514
      # Syslog UDP
      - 1514:1514/udp
      # GELF TCP
      - 12201:12201
      # GELF UDP
      - 12201:12201/udp
```

# Deploy Graylog

```docker-compose up -d```

# Test reception of LOG messages

* GELF

```echo -n '{ "version": "1.1", "host": "example.org", "short_message": "A short message ", "level": 5, "_some_info": "foo" }' | nc -vuw1 YOUR.IP.ADDR.ESS 12201```

* SYSLOG

```nc -zvuw1 10.112.106.236 514```

NOTE: during deployment phase, you can start TCPDUMP on Grafana host to verify the arrival of SYSLOG and GELF messages - ex: 

```sudo tcpdump -i any -v 'port 12201'```

```sudo tcpdump -i any -v 'port 514'```

