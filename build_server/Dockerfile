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

RUN /ohol/fetch_latest_tagged.sh
RUN /ohol/build_server.sh
