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

COPY pullAndBuildLatest /ohol/
COPY pullAndBuildTestSystem.sh /ohol/

WORKDIR /ohol

CMD /ohol/pullAndBuildLatest && /ohol/pullAndBuildTestSystem.sh
