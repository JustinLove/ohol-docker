#!/bin/sh
export SERVER_VERSION=`cat build_server/source/OneLife/server/serverCodeVersionNumber.txt`
export DATA_VERSION=`cat build_server/source/OneLifeData7/dataVersionNumber.txt`
docker build \
  --build-arg SERVER_VERSION \
  --build-arg DATA_VERSION \
  -t ohol-build:s${SERVER_VERSION}d${DATA_VERSION} \
  -f build_server/Dockerfile build_server
