#!/bin/sh
export SERVER_TAG=`cat build_server/source/OneLife/server/serverCodeTag.txt`
export DATA_VERSION=`cat build_server/source/OneLifeData7/dataVersionNumber.txt`
docker push wondible/ohol-server:s${SERVER_TAG}d${DATA_VERSION}
docker push wondible/ohol-server:latest
