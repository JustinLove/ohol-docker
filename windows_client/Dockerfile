FROM ubuntu:xenial

RUN apt-get update

#https://stackoverflow.com/questions/23671727/error-with-sudo-apt-get-dictionnary-commons-since-update-to-ubuntu-14-04
# install debconf?
#sudo apt-get install -y debconf
#sudo /usr/share/debconf/fix_db.pl

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

WORKDIR /ohol/source

RUN /ohol/fetch_latest_tagged.sh
RUN /ohol/apply_patches.sh
RUN /ohol/build_client_cross.sh

CMD ["/ohol/upload_client.sh"]
