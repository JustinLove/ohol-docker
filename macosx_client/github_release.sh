#!/bin/sh

gameClientVersion=$(grep versionNumber OneLife/gameSource/game.cpp | head -1 | sed -e 's/[^0-9]*//g' );
patchVersion=$(cat OneLife/patches-master/patchVersionNumber.txt );

curl --request GET "https://api.github.com/repos/JustinLove/onelife-client-patches/releases/tags/test_${gameClientVersion}.${patchVersion}" -K "/ohol/config/curl_github_auth.txt" --output github-fetch-response.json
#cat github-fetch-response.json
printf `grep 'upload_url' github-fetch-response.json | sed -e 's/.*upload_url": "\([^{]\+\){.*$/\1/'` > upload-url.txt
printf "?name=WonLifeMacOSX-${gameClientVersion}.${patchVersion}.zip" >> upload-url.txt
cat upload-url.txt
curl --request POST `cat upload-url.txt` -K "/ohol/config/curl_github_auth.txt" -H "Content-Type: application/zip" --data-binary @"WonLifeMacOSX-${gameClientVersion}.${patchVersion}.zip"
