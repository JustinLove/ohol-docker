#!/bin/sh
#docker run --rm -it --mount type=bind,source="$(pwd)"/config,target=/ohol/config ohol-macosx /bin/bash
docker run --rm -it ohol-macosx /bin/bash
