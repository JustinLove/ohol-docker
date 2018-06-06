#!/bin/sh
serverVersion=`cat build_context/source/OneLife/server/serverCodeVersionNumber.txt`
dataVersion=`cat build_context/source/OneLifeData7/dataVersionNumber.txt`
docker build -t ohol-server:s${serverVersion}d${dataVersion} -t ohol-server:latest -f server.Dockerfile server_context
