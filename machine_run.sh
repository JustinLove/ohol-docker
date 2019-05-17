#!/bin/sh
#note: docker-machine scp public_settings.sh wondible-ohol:
eval $(docker-machine env wondible-ohol)
docker pull wondible/ohol-server:latest
docker run --rm -d \
  --mount source=oholdata1,target=/ohol/db \
  --mount type=bind,source=/home/ubuntu/public_settings.sh,target=/ohol/configure_settings.sh \
  -p 8005:8005 wondible/ohol-server $1
