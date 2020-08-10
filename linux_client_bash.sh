#!/bin/sh
#docker run --rm -it --mount type=bind,source="$(pwd)"/config,target=/ohol/config ohol-linux /bin/bash
docker run --rm -it ohol-linux /bin/bash
