#!/bin/sh
export SERVER_VERSION=`cat build_server/source/OneLife/server/serverCodeVersionNumber.txt`
export SERVER_CHECKOUT=`cat build_server/source/OneLife/server/serverCodeCheckout.txt`
export SERVER_TAG=`cat build_server/source/OneLife/server/serverCodeTag.txt`
export DATA_VERSION=`cat build_server/source/OneLifeData7/dataVersionNumber.txt`
docker build \
  --build-arg SERVER_VERSION \
  --build-arg DATA_VERSION \
  -t ohol-server:s${SERVER_TAG}d${DATA_VERSION} \
  -t ohol-server:latest \
  -t wondible/ohol-server:s${SERVER_TAG}d${DATA_VERSION} \
  -t wondible/ohol-server:latest \
  -f package_server/Dockerfile \
  package_server
