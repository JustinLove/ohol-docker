#!/bin/sh
export SERVER_VERSION=`cat build_server/source/OneLife/server/serverCodeVersionNumber.txt`
export SERVER_CHECKOUT=`cat build_server/source/OneLife/server/serverCodeCheckout.txt`
export SERVER_TAG=`cat build_server/source/OneLife/server/serverCodeTag.txt`
export DATA_VERSION=`cat build_server/source/OneLifeData7/dataVersionNumber.txt`
export DATA_CHECKOUT=`cat build_server/source/OneLifeData7/dataCheckout.txt`
export DATA_TAG=`cat build_server/source/OneLifeData7/dataTag.txt`
docker build \
  --build-arg SERVER_VERSION \
  --build-arg SERVER_CHECKOUT \
  --build-arg SERVER_TAG \
  --build-arg DATA_VERSION \
  --build-arg DATA_CHECKOUT \
  --build-arg DATA_TAG \
  -t ohol-build:s${SERVER_TAG}d${DATA_TAG} \
  -f build_server/Dockerfile build_server
