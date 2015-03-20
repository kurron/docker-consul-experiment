#!/bin/bash

docker run --detach --volume /var/run/docker.sock:/tmp/docker.sock --hostname $HOSTNAME gliderlabs/registrator -ip -resync 60 consul://192.168.1.227:8500 
