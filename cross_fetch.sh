#!/bin/sh

cd source
../build_context/fetch_latest_tagged.sh
cp ../cross_context/cross/* minorGems/game/platforms/SDL/
