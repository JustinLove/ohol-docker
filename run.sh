#!/bin/sh
docker run --rm -it --mount source=oholdata5,target=/ohol/db -p 8005:8005 ohol-server $1
