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

COPY build_scripts /ohol/

WORKDIR /ohol/source

CMD /ohol/fetch_latest_tagged.sh && /ohol/build_server.sh
