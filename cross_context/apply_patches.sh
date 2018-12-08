#!/bin/sh

cd OneLife

git config user.name "Cross Docker"
git config user.email "cross@example.com"

git checkout -b patched
stg init
stg import --series patches-master/series

echo "done"
