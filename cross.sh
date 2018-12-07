#!/bin/sh
#docker run -it --mount type=bind,source="$(pwd)"/source,target=/ohol/source ohol-cross /bin/bash
docker run -it ohol-cross /bin/bash
