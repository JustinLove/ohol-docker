FROM alpine
RUN apk --no-cache --update add \
  g++ \
  git \
  glu-dev \
  imagemagick \
  make \
  mesa-gl \
  sdl-dev \
  xclip

COPY . /ohol/

WORKDIR /ohol/source

ARG SERVER_VERSION
ARG SERVER_CHECKOUT
ARG SERVER_TAG
ARG DATA_VERSION
ARG DATA_CHECKOUT
ARG DATA_TAG

RUN /ohol/fetch_latest_tagged.sh
RUN /ohol/build_server.sh
