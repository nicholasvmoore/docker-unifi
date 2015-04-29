#!/bin/bash
docker rm -f unifi
docker run --net=host -v /opt/unifi:/var/lib/unifi --name unifi unifi
#docker run -p 8080:8080/tcp -p 8081:8081/tcp -p 8443:8443/tcp -p 8880:8880/tcp -p 8843:8843/tcp -p 3478:3478/udp -v /opt/unifi:/var/lib/unifi --name unifi unifi
