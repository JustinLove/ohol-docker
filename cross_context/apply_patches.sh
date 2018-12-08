#!/bin/sh

cd OneLife

git config user.name "Cross Docker"
git config user.email "cross@example.com"

git checkout -b patched
stg init
stg import --series patches-master/series

../../output_metadata.sh > build/win32/icon.rc

echo "done"
