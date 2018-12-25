#!/bin/sh

cd OneLife

./configure 5

cd gameSource

make

mv OneLife WonLife.exe
gameClientVersion=$(grep versionNumber game.cpp | head -1 | sed -e 's/[^0-9]*//g' );
patchVersion=$(cat ../patches-master/patchVersionNumber.txt);
7z a ../../WonLife-${gameClientVersion}.${patchVersion}.zip WonLife.exe