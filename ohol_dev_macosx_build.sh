#!/bin/sh
docker build \
  -t ohol-dev-macosx:latest \
  -t wondible/ohol-dev-macosx:latest \
  -f ohol_dev_macosx/Dockerfile ohol_dev_macosx
