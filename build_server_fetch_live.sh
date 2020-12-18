#!/bin/sh

export SERVER_CHECKOUT=OneLife_liveServer
#export SERVER_CHECKOUT=master
export DATA_CHECKOUT=OneLife_liveServer
#export DATA_CHECKOUT=master

cd build_server/source
../fetch_latest_tagged.sh
