#!/bin/bash
docker run --rm --name grafana --network graynet \
  -p 3000:3000 \
  -e "GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-simple-json-datasource" \
  -d grafana/grafana
