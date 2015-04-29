#!/bin/bash
docker rm -f unifi
docker rmi unifi
docker build -t unifi .
