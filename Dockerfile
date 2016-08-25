#
# custom influxdb docker file
#

FROM        influxdb:0.13.0-alpine

# make everything configurable
VOLUME      /var/lib/influxdb /etc/influxdb

# add default influxdb configuration
COPY        [ "influxdb.conf", "collectd-types.db", "/etc/influxdb/" ]

# expose all the ports
EXPOSE      8083 8086 8088 2003 2004 25826

# vim:shiftwidth=2 softtabstop=2 expandtab
# EOF
