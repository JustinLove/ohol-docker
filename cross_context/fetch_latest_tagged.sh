#!/bin/sh

if [ ! -e minorGems ]
then
	git clone https://github.com/jasonrohrer/minorGems.git	
fi

if [ ! -e OneLife ]
then
	git clone https://github.com/jasonrohrer/OneLife.git
fi


cd minorGems
git fetch --tags
latestTaggedVersion=`git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//'`
git checkout -f -q OneLife_v$latestTaggedVersion
cp ../../cross/* game/platforms/SDL/
if sed --version 2> /dev/null | grep GNU -q; then
  find network \( -name "*.cpp" -or -name "*.h" \) -exec sed -i -e 's/Winsock/winsock/g' {} +
else
  find network \( -name "*.cpp" -or -name "*.h" \) -exec sed -i "" -e 's/Winsock/winsock/g' {} +
fi

cd ../OneLife
git fetch --tags
latestTaggedVersionA=`git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//'`
git checkout -f -q OneLife_v$latestTaggedVersionA

git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//' > server/serverCodeVersionNumber.txt
echo "*.bat binary" > .git/info/attributes
rm server/runServer.bat
git checkout server/runServer.bat

rm */cache.fcz

echo "done"