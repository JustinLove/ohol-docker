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

# patch and package support
RUN apt-get install -y \
  p7zip-full \
  wget \
  stgit

# upload
RUN apt-get install -y \
  s3cmd \
  curl

COPY . /ohol/

WORKDIR /ohol/source

RUN /ohol/fetch_latest_tagged.sh
RUN /ohol/apply_patches.sh
RUN /ohol/build_client.sh

CMD ["/ohol/publish_build.sh"]
