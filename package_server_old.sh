#!/bin/sh
export SERVER_VERSION=`cat build_server/source/OneLife/server/serverCodeVersionNumber.txt`
export DATA_VERSION=`cat build_server/source/OneLifeData7/dataVersionNumber.txt`
docker build \
  --build-arg SERVER_VERSION \
  --build-arg DATA_VERSION \
  -t ohol-server:s${SERVER_VERSION}d${DATA_VERSION} \
  -t wondible/ohol-server:s${SERVER_VERSION}d${DATA_VERSION} \
  -f package_server/Dockerfile \
  package_server
