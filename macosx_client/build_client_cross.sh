#!/bin/sh

cd OneLife

./configure 6

cd gameSource

export OSXCROSS_MP_INC=1
export CUSTOM_MACOSX_LINK_FLAGS=-F/Library/Frameworks
make

#534  cd ../build
#  536  ./makeDistributionMacOSX v266 `uname` /Library/Frameworks/SDL.framework
#  554  mkdir mac/OneLife_v266/OneLife.app
#  556  cp -R -v macOSX/OneLife.app mac/OneLife_v266/OneLife_v266.app
#  559  cp -r /Library/Frameworks/SDL.framework mac/OneLife_v266/OneLife_v266.app/Contents/Frameworks/
#  562  ./makeDistributionMacOSX v266 `uname` /Library/Frameworks/SDL.framework


#mv OneLife WonLife.exe
cp ../patches-master/README.md ./
cp ../patches-master/CHANGELOG.md ./
cp ../server/firstNames.txt ./
cp ../server/maleNames.txt ./
cp ../server/femaleNames.txt ./
cp ../server/lastNames.txt ./
cp ../server/namesInfo.txt ./
gameClientVersion=$(grep versionNumber game.cpp | head -1 | sed -e 's/[^0-9]*//g' );
patchVersion=$(cat ../patches-master/patchVersionNumber.txt);
7z a ../../WonLifeMacOSX-${gameClientVersion}.${patchVersion}.zip @../patches-master/package_files.txt
