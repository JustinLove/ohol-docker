#!/bin/sh

cd OneLife

./configure 5

cd gameSource

make

mv OneLife WonLife.exe
cp ../patches-master/README.md ./
cp ../patches-master/CHANGELOG.md ./
cp ../server/firstNames.txt ./
cp ../server/lastNames.txt ./
cp ../server/namesInfo.txt ./
gameClientVersion=$(grep versionNumber game.cpp | head -1 | sed -e 's/[^0-9]*//g' );
patchVersion=$(cat ../patches-master/patchVersionNumber.txt);
7z a ../../WonLife-${gameClientVersion}.${patchVersion}.zip @../patches-master/package_files.txt
