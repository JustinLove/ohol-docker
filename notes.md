## Notes

 - break down build scripts
 - setting updates

## Docker commands

  536  docker image ls
  537  docker container ls --all
  541  docker run -i -t ubuntu /bin/bash 
  547  docker volume create ohol1
  549  docker container ls
  550  docker run -i -t --mount source=ohol1,target=/ohol ubuntu /bin/bash 
  555  docker image ls
  559  docker ps
  560  docker ps --all
  561  docker exec -it ohol /bin/bash
  600  docker ps
  601  docker attach 069b
  622  docker run -i -t --mount source=ohola1,target=/ohol -p 8005:8005 -w /ohol/OneLife/server alpine /bin/sh
  632  docker build -t ohol-build -f build.Dockerfile .
  635  docker run -i -t --mount source=ohola1,target=/ohol ohol-build
  639  docker build -t ohol-server -f server.Dockerfile .
  640  docker run -t --mount source=ohola1,target=/ohol -p 8005:8005 ohol-server

## Alpine update commands

   1 apk update
   3 apk add git
   4 apk add g++
   6 apk add imagemagick make
   7 apk add xclip
  15 apk add sdl-dev
  17 apk add glu-dev
  24 apk add mesa-gl
