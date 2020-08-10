#!/bin/sh

cd OneLife

./configure 1

cd gameSource

make

mv OneLife WonLifeApp
cp ../patches-master/README.md ./
cp ../patches-master/CHANGELOG.md ./
cp ../server/firstNames.txt ./
cp ../server/maleNames.txt ./
cp ../server/femaleNames.txt ./
cp ../server/lastNames.txt ./
cp ../server/namesInfo.txt ./
gameClientVersion=$(grep versionNumber game.cpp | head -1 | sed -e 's/[^0-9]*//g' );
patchVersion=$(cat ../patches-master/patchVersionNumber.txt);
sed -i "/WonLife.exe/cWonLifeApp" ../patches-master/package_files.txt
7z a ../../WonLifeLinux-${gameClientVersion}.${patchVersion}.zip @../patches-master/package_files.txt
