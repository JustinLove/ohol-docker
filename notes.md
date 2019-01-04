## Notes

- work out using container on windows

- break down build scripts
- setting updates

- how to be notified of changes in other repositories - lambda scheduled task?
- Where can we run actual builds?
  - CircleCI - compile image with build commands in yaml
  - TravicsCI - support running docker commands, hopefully scripts running docker commands
  - Docker Hub for image builds - no run?
  - ECS - lots of settings and options
    - fargate is more containe oriented?
    - can supposedly set terminate on done
    - storage?


## Docker commands

docker image ls
docker container ls --all
docker run -i -t ubuntu /bin/bash 
docker volume create oholdata1
docker ps
docker ps --all
docker ps -l
docker cp <id>:/some/path ./
docker exec -it ohol /bin/bash
docker attach 069b
docker run --rm -i -t --mount source=ohola1,target=/ohol/source -p 8005:8005 -w /ohol/source/OneLife/server alpine /bin/sh
docker run --rm -i -t --mount source=ohola1,target=/ohol/source ohol-build
docker run --rm -t --mount source=ohola1,target=/ohol/source -p 8005:8005 ohol-server
docker run --rm -t -p 8005:8005 ohol-server

docker volume create oholdata1
docker build -t ohol-build -f build_server/Dockerfile build_server
docker build -t ohol-server -f package_server/Dockerfile package_server
docker run --rm -it --mount source=oholdata5,target=/ohol/db -p 8005:8005 ohol-server

s3cmd --configure s3://wondible-com-wonlife --config=./.s3cfg

## Alpine update commands

apk update
apk add git
apk add g++
apk add imagemagick make
apk add xclip
apk add sdl-dev
apk add glu-dev
apk add mesa-gl
