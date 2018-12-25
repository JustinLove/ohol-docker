#!/bin/sh
#docker run --rm -it --mount type=bind,source="$(pwd)"/source,target=/ohol/source ohol-cross /bin/bash
docker run --rm -it --mount type=bind,source="$(pwd)"/config,target=/ohol/config ohol-cross /bin/bash
#docker run --rm -it ohol-cross /bin/bash
