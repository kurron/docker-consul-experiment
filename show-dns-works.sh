#!/bin/bash

# opens up a console that you can ping the registered containers with
docker run --tty --interactive --dns 192.168.1.229 --dns-search service.consul ubuntu:14.04 /bin/bash
