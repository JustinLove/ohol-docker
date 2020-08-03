#!/bin/sh

set -eu

cd OneLife

git config user.name "Cross Docker"
git config user.email "cross@example.com"

patchOnCommit=`sed -n "/GIT commit/p" patches-master/series | sed "s/.*commit //"`
latestTaggedVersion=`git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//'`

git checkout $patchOnCommit -b patched
stg init
stg import --series patches-master/series
stg rebase OneLife_v$latestTaggedVersion

/ohol/output_metadata.sh > build/win32/icon.rc

echo "done"
