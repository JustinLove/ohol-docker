#!/bin/sh
serverVersion=`cat build_context/source/OneLife/server/serverCodeVersionNumber.txt`
dataVersion=`cat build_context/source/OneLifeData7/dataVersionNumber.txt`
docker build -t ohol-build:s${serverVersion}d${dataVersion} -t ohol-build:latest -f build.Dockerfile build_context
