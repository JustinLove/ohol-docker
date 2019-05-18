#!/bin/sh
export SERVER_TAG=`cat build_server/source/OneLife/server/serverCodeTag.txt`
export DATA_VERSION=`cat build_server/source/OneLifeData7/dataVersionNumber.txt`
docker build \
  --build-arg SERVER_TAG \
  --build-arg DATA_VERSION \
  -t ohol-server:s${SERVER_TAG}d${DATA_VERSION} \
  -t ohol-server:latest \
  -t wondible/ohol-server:s${SERVER_TAG}d${DATA_VERSION} \
  -t wondible/ohol-server:latest \
  -f package_server/Dockerfile \
  package_server
