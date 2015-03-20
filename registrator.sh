#!/bin/bash

docker run --detach --volume /var/run/docker.sock:/tmp/docker.sock --hostname $HOSTNAME gliderlabs/registrator -ip 192.168.1.229 consul://192.168.1.229:8500
