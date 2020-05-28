#!/bin/bash
sudo sysctl -w vm.max_map_count=262144 && \
docker run --rm --name elasticsearch --network graynet \
    -e "http.host=0.0.0.0" \
    -e "ES_JAVA_OPTS=-Xms512m -Xmx512m" \
    -d docker.elastic.co/elasticsearch/elasticsearch:6.8.9
