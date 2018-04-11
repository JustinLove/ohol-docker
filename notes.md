## Notes

 - break down build scripts
 - setting updates

## Storage layers


### Build

- base system
- git, buildchain
- volume
- repo and build artifacts

- ohol/
  - x.sh
  - source/

### Server

- base systems
- libc++
- server
- settings?

## Docker commands

docker image ls
docker container ls --all
docker run -i -t ubuntu /bin/bash 
docker volume create oholdata1
docker ps
docker ps --all
docker exec -it ohol /bin/bash
docker attach 069b
docker run --rm -i -t --mount source=ohola1,target=/ohol/source -p 8005:8005 -w /ohol/source/OneLife/server alpine /bin/sh
docker run --rm -i -t --mount source=ohola1,target=/ohol/source ohol-build
docker run --rm -t --mount source=ohola1,target=/ohol/source -p 8005:8005 ohol-server
docker run --rm -t -p 8005:8005 ohol-server

docker volume create oholdata1
docker build -t ohol-build -f build.Dockerfile build_context
docker build -t ohol-server -f server.Dockerfile server_context
docker run --rm -it --mount source=oholdata5,target=/ohol/db -p 8005:8005 ohol-server

## Alpine update commands

apk update
apk add git
apk add g++
apk add imagemagick make
apk add xclip
apk add sdl-dev
apk add glu-dev
apk add mesa-gl
