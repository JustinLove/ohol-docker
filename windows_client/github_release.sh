#!/bin/sh

gameClientVersion=$(grep versionNumber OneLife/gameSource/game.cpp | head -1 | sed -e 's/[^0-9]*//g' );
patchVersion=$(cat OneLife/patches-master/patchVersionNumber.txt );

/ohol/output_create_release.sh > create_release.json
curl --request POST "https://api.github.com/repos/JustinLove/onelife-client-patches/releases" -K "/ohol/config/curl_github_auth.txt" --data @create_release.json --output github-create-response.json
printf `grep 'upload_url' github-create-response.json | sed -e 's/.*upload_url": "\([^{]\+\){.*$/\1/'` > upload-url.txt
printf "?name=WonLife-${gameClientVersion}.${patchVersion}.zip" >> upload-url.txt
cat upload-url.txt
curl --request POST `cat upload-url.txt` -K "/ohol/config/curl_github_auth.txt" -H "Content-Type: application/zip" --data-binary @"WonLife-${gameClientVersion}.${patchVersion}.zip"
