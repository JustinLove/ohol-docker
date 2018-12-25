#!/bin/sh
serverVersion=`cat build_server/source/OneLife/server/serverCodeVersionNumber.txt`
dataVersion=`cat build_server/source/OneLifeData7/dataVersionNumber.txt`
docker build -t ohol-build:s${serverVersion}d${dataVersion} -t ohol-build:latest -f build.Dockerfile build_server
