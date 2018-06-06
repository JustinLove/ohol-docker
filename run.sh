#!/bin/sh
docker run --rm -it --mount source=oholdata6,target=/ohol/db -p 8005:8005 ohol-server $1
