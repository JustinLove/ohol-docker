#!/bin/sh
serverVersion=`cat build_context/source/OneLife/server/serverCodeVersionNumber.txt`
dataVersion=`cat build_context/source/OneLife/server/serverCodeVersionNumber.txt`
docker build -t ohol-build:s${serverVersion}d${dataVersion} -f build.Dockerfile build_context
