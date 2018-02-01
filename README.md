# README

This project extends original [InfluxData alpine-linux based Docker image](https://github.com/influxdata/influxdata-docker)
and provides additional customization and docker volume management.

# Features

## Docker image features

  * [InfluxDB](https://www.influxdata.com/time-series-platform/influxdb/) version **1.4.3**
  * [Alpine Linux](https://alpinelinux.org/) **3.6**

## InfluxDB configuration features

  * bundled configuration supporting **collectd** (network plugin) and **graphite** (tcp/udp) inputs
  * docker volumes for maximum configurability and performance:
    * /etc/influxdb
    * /var/lib/influxdb/meta
    * /var/lib/influxdb/data
    * /var/lib/influxdb/wal

# DockerHub

[gracnar/influxdb](https://hub.docker.com/r/gracnar/influxdb/)

# Usage

```
docker run gracnar/influxdb:latest
```

# docker-compose

```yml
#
# docker-compose.yml for influxdb/grafana stack
#

version: '2'

services:

  # influxdb
  influxdb:
    image:  gracnar/influxdb
    user:   nobody
    ports:
      - "5000:5000"
      - "8083:8083"
      - "8086:8086"
      - "8088:8088"
      - "2003:2003"
      - "2004:2004/udp"
      - "25826:25826/udp"
    volumes:
      # if you want custom configuration, uncomment the following line
      # - "/data/influxdb/conf:/etc/influxdb"
      - "/data/influxdb/meta:/var/lib/influxdb/meta"
      - "/data/influxdb/data:/var/lib/influxdb/data"
      - "/data/influxdb/wal:/var/lib/influxdb/wal"

```
