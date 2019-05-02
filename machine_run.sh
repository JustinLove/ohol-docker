#!/bin/sh
eval $(docker-machine env wondible-ohol)
docker run --rm --mount source=oholdata1,target=/ohol/db -p 8005:8005 wondible/ohol-server $1
