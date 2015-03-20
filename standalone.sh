#!/bin/bash

# start the container
docker run -p 8400:8400 -p 8500:8500 -p 8600:53/udp -h standalone progrium/consul -server -bootstrap -ui-dir /ui

# test out the REST API
# curl localhost:8500/v1/catalog/nodes

# test out DNS API
# dig @0.0.0.0 -p 8600 standalone.node.consul
