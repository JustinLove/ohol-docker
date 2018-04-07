## Notes

 - break down build scripts
 - setting updates

## Storage layers

### Update

- base system
- git
- volume git state

- ohol/
  - x.sh
  - source/

### Build

- base system
- buildchain
- readonly git state
- build artifacts

### Server

- base systems
- libc++
- server
- settings?

## Docker commands

docker image ls
docker container ls --all
docker run -i -t ubuntu /bin/bash 
docker volume create ohol1
docker container ls
docker image ls
docker ps
docker ps --all
docker exec -it ohol /bin/bash
docker ps
docker attach 069b
docker run -i -t --mount source=ohola1,target=/ohol/source -p 8005:8005 -w /ohol/source/OneLife/server alpine /bin/sh
docker build -t ohol-build -f build.Dockerfile .
docker run -i -t --mount source=ohola1,target=/ohol/source ohol-build
docker build -t ohol-server -f server.Dockerfile .
docker run -t --mount source=ohola1,target=/ohol/source -p 8005:8005 ohol-server

## Alpine update commands

apk update
apk add git
apk add g++
apk add imagemagick make
apk add xclip
apk add sdl-dev
apk add glu-dev
apk add mesa-gl
