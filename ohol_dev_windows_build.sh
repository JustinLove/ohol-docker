#!/bin/sh
docker build \
  -t ohol-dev-windows:latest \
  -t wondible/ohol-dev-windows:latest \
  -f ohol_dev_windows/Dockerfile ohol_dev_windows
