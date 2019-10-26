#!/bin/sh

gameClientVersion=$(grep versionNumber gameSource/game.cpp | head -1 | sed -e 's/[^0-9]*//g' );
patchVersion=$(cat patches-master/patchVersionNumber.txt );
packageVersion=0

cat <<EOF
{
  "tag_name": "test_${gameClientVersion}.${patchVersion}",
  "target_commitish": "v${patchVersion}",
  "name": "v${gameClientVersion}.${patchVersion}",
  "draft": true
}
EOF
