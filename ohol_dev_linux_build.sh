#!/bin/sh
docker build \
  -t ohol-dev-linux:latest \
  -t wondible/ohol-dev-linux:latest \
  -f ohol_dev_linux/Dockerfile ohol_dev_linux
