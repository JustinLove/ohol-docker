#!/bin/sh

git clone https://github.com/jasonrohrer/minorGems.git --depth 10
cd minorGems
latestTaggedVersion=`git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//'`
git checkout -f -q OneLife_v$latestTaggedVersion
cp /ohol/cross/* game/platforms/SDL/
if sed --version 2> /dev/null | grep GNU -q; then
  find network \( -name "*.cpp" -or -name "*.h" \) -exec sed -i -e 's/Winsock/winsock/g' {} +
else
  find network \( -name "*.cpp" -or -name "*.h" \) -exec sed -i "" -e 's/Winsock/winsock/g' {} +
fi
cd ..

git clone https://github.com/jasonrohrer/OneLife.git
cd OneLife
latestTaggedVersionA=`git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//'`
git checkout -f -q OneLife_v$latestTaggedVersionA

git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//' > server/serverCodeVersionNumber.txt
echo "*.bat binary" > .git/info/attributes
rm server/runServer.bat
git checkout server/runServer.bat

rm */cache.fcz

git clone https://github.com/JustinLove/onelife-client-patches.git patches-master -b master
cd patches-master
git for-each-ref --sort=-authordate --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/v* | sed -e 's/v//' > patchVersionNumber.txt
latestTaggedPatch=`cat patchVersionNumber.txt`
git checkout -f -q v$latestTaggedPatch

cd ..

echo "done"
