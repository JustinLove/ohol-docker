#!/bin/sh

cd OneLife

./configure 6

cd gameSource

export OSXCROSS_MP_INC=1
export CUSTOM_MACOSX_LINK_FLAGS=-F/opt/osxcross/target/macports/pkgs/opt/local/Library/Frameworks
make

cp -R ../build/macOSX/OneLife.app WonLife.app
cp OneLife WonLife.app/Contents/MacOS
rm WonLife.app/Contents/MacOS/empty.txt
rm WonLife.app/Contents/Frameworks/empty.txt
cp -R /opt/osxcross/target/macports/pkgs/opt/local/Library/Frameworks/SDL.framework WonLife.app/Contents/Frameworks/

cp ../patches-master/README.md ./
cp ../patches-master/CHANGELOG.md ./
cp ../server/firstNames.txt ./
cp ../server/maleNames.txt ./
cp ../server/femaleNames.txt ./
cp ../server/lastNames.txt ./
cp ../server/namesInfo.txt ./
gameClientVersion=$(grep versionNumber game.cpp | head -1 | sed -e 's/[^0-9]*//g' );
patchVersion=$(cat ../patches-master/patchVersionNumber.txt);
sed -i '/WonLife.exe/cWonLife.app' ../patches-master/package_files.txt
7z a ../../WonLifeMacOSX-${gameClientVersion}.${patchVersion}.zip @../patches-master/package_files.txt
