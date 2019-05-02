#!/bin/sh
serverVersion=`cat build_server/source/OneLife/server/serverCodeVersionNumber.txt`
dataVersion=`cat build_server/source/OneLifeData7/dataVersionNumber.txt`
docker build \
  -t ohol-server:s${serverVersion}d${dataVersion} \
  -t ohol-server:latest \
  -t wondible/ohol-server:s${serverVersion}d${dataVersion} \
  -t wondible/ohol-server:latest \
  -f package_server/Dockerfile \
  package_server
