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
  xclip \
  g++-mingw-w64 \
  p7zip-full \
  wget \
  stgit

  #-i686

COPY . /ohol/

WORKDIR /ohol

RUN /ohol/install_mingw.sh
