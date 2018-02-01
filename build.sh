#!/bin/sh

VERSION="1.4.3"
REGISTRY="gracnar/influxdb"

build() {
  docker build --rm --pull -t "$REGISTRY:$VERSION" .
}

push() {
  docker push "$REGISTRY:$VERSION"
}

build && push

# vim:shiftwidth=2 softtabstop=2 expandtab
# EOF

