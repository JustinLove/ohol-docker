#!/bin/sh
export SERVER_TAG=`cat build_server/source/OneLife/server/serverCodeTag.txt`
export DATA_TAG=`cat build_server/source/OneLifeData7/dataTag.txt`
docker build \
  --build-arg SERVER_TAG \
  --build-arg DATA_TAG \
  -t ohol-server:s${SERVER_TAG}d${DATA_TAG} \
  -t ohol-server:latest \
  -t wondible/ohol-server:s${SERVER_TAG}d${DATA_TAG} \
  -t wondible/ohol-server:latest \
  -f package_server/Dockerfile \
  package_server
