#!/bin/sh
gameClientVersion=$(grep versionNumber OneLife/gameSource/game.cpp | head -1 | sed -e 's/[^0-9]*//g' );
patchVersion=$(cat OneLife/patches-master/patchVersionNumber.txt);
s3cmd --config=/ohol/config/.s3cfg -P put WonLifeMacOSX-${gameClientVersion}.${patchVersion}.zip s3://wondible-com-wonlife
s3cmd --config=/ohol/config/.s3cfg -P cp s3://wondible-com-wonlife/WonLifeMacOSX-${gameClientVersion}.${patchVersion}.zip s3://wondible-com-wonlife/WonLifeMacOSX-latest.zip
