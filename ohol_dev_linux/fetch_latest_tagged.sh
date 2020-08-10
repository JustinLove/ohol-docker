#!/bin/sh

git clone https://github.com/jasonrohrer/minorGems.git --depth 10
cd minorGems
latestTaggedVersion=`git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//'`
git checkout -f -q OneLife_v$latestTaggedVersion
cd ..

git clone https://github.com/jasonrohrer/OneLife.git
cd OneLife
latestTaggedVersionA=`git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//'`
git checkout -f -q OneLife_v$latestTaggedVersionA

echo "*.bat binary" > .git/info/attributes
rm server/runServer.bat
git checkout server/runServer.bat

rm */cache.fcz

git clone https://github.com/JustinLove/onelife-client-patches.git patches-master
cd patches-master
git for-each-ref --sort=-authordate --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/v* | sed -e 's/v//' > patchVersionNumber.txt
latestTaggedPatch=`cat patchVersionNumber.txt`
git checkout -f -q v$latestTaggedPatch

cd ..

echo "done"
