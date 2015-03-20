#!/bin/bash

# leader node
docker run --detach --name node1 --hostname node1 progrium/consul -server -bootstrap-expect 3

# get container's internal IP
JOIN_IP="$(docker inspect --format '{{.NetworkSettings.IPAddress}}' node1)"

# start node 2 and join it to the leader
docker run --detach --name node2 --hostname node2 progrium/consul -server -join $JOIN_IP

# start node 3 and join it to the cluster
docker run --detach --name node3 --hostname node3 progrium/consul -server -join $JOIN_IP

# create a container that can interact with the cluster
docker run --detach --publish 8400:8400 --publish 8500:8500 --publish 8600:53/udp --name node4 --hostname node4 progrium/consul -join $JOIN_IP -ui-dir /ui
