FROM ubuntu:xenial

RUN apt-get update

# OHOL dev
RUN apt-get install -y \
  g++ \
  git \
  imagemagick \
  make \
  libglu1-mesa-dev \
  libgl1-mesa-dev \
  libsdl1.2-dev \
  xclip

# cross compile
RUN apt-get install -y \
  g++-mingw-w64-i686 \
  p7zip-full \
  wget \
  stgit

# upload
RUN apt-get install -y \
  s3cmd \
  curl

COPY install_mingw.sh /ohol/
RUN /ohol/install_mingw.sh

COPY . /ohol/

RUN mkdir -p ~/.config/git && \
  cp /ohol/gitattributes ~/.config/git/attributes
