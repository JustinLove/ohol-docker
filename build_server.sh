#!/bin/sh
export SERVER_VERSION=`cat build_server/source/OneLife/server/serverCodeVersionNumber.txt`
export SERVER_CHECKOUT=`cat build_server/source/OneLife/server/serverCodeCheckout.txt`
export SERVER_TAG=`cat build_server/source/OneLife/server/serverCodeTag.txt`
export DATA_VERSION=`cat build_server/source/OneLifeData7/dataVersionNumber.txt`
docker build \
  --build-arg SERVER_VERSION \
  --build-arg SERVER_CHECKOUT \
  --build-arg SERVER_TAG \
  --build-arg DATA_VERSION \
  -t ohol-build:s${SERVER_TAG}d${DATA_VERSION} \
  -f build_server/Dockerfile build_server
