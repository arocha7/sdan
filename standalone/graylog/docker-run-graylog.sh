#!/bin/bash
docker run --rm --name graylog --link mongo --link elasticsearch --network graynet \
     -p 0.0.0.0:9000:9000 -p 0.0.0.0:12201:12201 -p 0.0.0.0:12201:12201/udp -p 0.0.0.0:1514:1514 -p 0.0.0.0:1514:1514/udp -p 0.0.0.0:5555:5555 \
     -e GRAYLOG_HTTP_EXTERNAL_URI="http://10.112.106.236:9000/" \
     -d graylog/graylog:3.3

# https://pythonspeed.com/articles/docker-connection-refused/
