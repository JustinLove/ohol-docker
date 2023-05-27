#!/bin/sh

set -e

if [ ! -e minorGems ]
then
	git clone https://github.com/jasonrohrer/minorGems.git	
fi

if [ ! -e OneLife ]
then
	git clone https://github.com/jasonrohrer/OneLife.git
fi

if [ ! -e OneLifeData7 ]
then
	git clone https://github.com/jasonrohrer/OneLifeData7.git	
fi


cd minorGems
(git fetch --tags || true)  #fetch the branches
git fetch origin "+refs/tags/*:refs/tags/*" #now overwrite the tags
git reset --hard
git checkout master
git merge origin/master
if [ -z $SERVER_VERSION ]
then
  minorGemsVersion=`git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//'`
else
  minorGemsVersion=$SERVER_VERSION
fi

if [ -z $SERVER_CHECKOUT ]
then
  git checkout -f -q OneLife_v$minorGemsVersion
else
  git checkout -f -q $SERVER_CHECKOUT
fi
echo "minor gems $minorGemsVersion $SERVER_CHECKOUT"
git checkout -f -q $SERVER_CHECKOUT
find network \( -name "*.cpp" -or -name "*.h" \) -exec sed -i"" -e 's/Winsock/winsock/g' {} +


cd ../OneLife
(git fetch --tags || true)  #fetch the branches
git fetch origin "+refs/tags/*:refs/tags/*" #now overwrite the tags
#cp server/server.cpp server/server.cpp.bak
git reset --hard
git checkout master
git merge origin/master
if [ -z $SERVER_VERSION ]
then
  SERVER_VERSION=`git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//'`
fi

if [ -z $SERVER_CHECKOUT ]
then
  git checkout -f -q OneLife_v$SERVER_VERSION
  SERVER_TAG=$SERVER_VERSION
else
  git checkout -f -q $SERVER_CHECKOUT
  SERVER_TAG=$SERVER_VERSION-`git log -1 --pretty=format:%h`
fi
echo "server $SERVER_TAG"
#cp server/server.cpp.bak server/server.cpp

echo $SERVER_VERSION > server/serverCodeVersionNumber.txt
echo $SERVER_CHECKOUT > server/serverCodeCheckout.txt
echo $SERVER_TAG > server/serverCodeTag.txt

cd ../OneLifeData7
(git fetch --tags || true)  #fetch the branches
git fetch origin "+refs/tags/*:refs/tags/*" #now overwrite the tags
git reset --hard
git checkout master
git merge origin/master
if [ -z $DATA_VERSION ]
then
  DATA_VERSION=`git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//'`
fi

if [ -z $DATA_CHECKOUT ]
then
  git checkout -f -q OneLife_v$DATA_VERSION
  DATA_TAG=$DATA_VERSION
else
  git checkout -f -q $DATA_CHECKOUT
  DATA_TAG=$DATA_VERSION-`git log -1 --pretty=format:%h`
fi
echo "data $DATA_TAG"

echo $DATA_CHECKOUT > dataCheckout.txt
echo $DATA_TAG > dataTag.txt

if [ -e */cache.fcz ]
then
  rm */cache.fcz
fi

echo "done"
