#
# custom influxdb docker file
#

FROM        influxdb:1.1.1-alpine

# make everything configurable
VOLUME      [ "/var/lib/influxdb", "/var/lib/influxdb/data", "/var/lib/influxdb/meta", "/var/lib/influxdb/wal", "/etc/influxdb" ]

# add default influxdb configuration
ADD         [ "influxdb.conf", "collectd-types.db", "/etc/influxdb/" ]

# expose all the ports
EXPOSE      8086 8088 2003 2004 25826 4242 8089

# vim:shiftwidth=2 softtabstop=2 expandtab
# EOF
