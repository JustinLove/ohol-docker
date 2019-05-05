#!/bin/sh
docker run --rm -it \
  --mount source=oholdatav58,target=/ohol/db \
  --mount type=bind,source=$(pwd)/local_settings.sh,target=/ohol/configure_settings.sh \
  -p 8058:8005 ohol-server:s58d57 $1
