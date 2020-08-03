FROM andrewd/osxcross

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
  p7zip-full \
  wget \
  stgit

RUN apt-get install -y \
  s3cmd

COPY setup_osxcross.sh /ohol/
RUN /ohol/setup_osxcross.sh

COPY . /ohol/

RUN mkdir -p ~/.config/git && \
  cp /ohol/gitattributes ~/.config/git/attributes
