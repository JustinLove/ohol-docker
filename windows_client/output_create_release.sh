#!/bin/sh

gameClientVersion=$(grep versionNumber OneLife/gameSource/game.cpp | head -1 | sed -e 's/[^0-9]*//g' );
patchVersion=$(cat OneLife/patches-master/patchVersionNumber.txt );
target_commitish=$(git --git-dir=OneLife/patches-master/.git log -1 --pretty=format:%H v${patchVersion});
packageVersion=0

cat <<EOF
{
  "tag_name": "test_${gameClientVersion}.${patchVersion}",
  "target_commitish": "${target_commitish}",
  "name": "v${gameClientVersion}.${patchVersion}",
  "draft": false,
  "prerelease": false
}
EOF
