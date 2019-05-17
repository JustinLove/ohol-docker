#!/bin/sh
eval $(docker-machine env wondible-ohol)
docker exec $1 sh -c 'echo -n "1" > settings/shutdownMode.ini'
