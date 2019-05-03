#!/bin/sh

set -e

cd OneLife/server

if [ -e lineardb3.cpp ]
then
  patch <../../../fix-lineardb-read-write-ordering.patch
fi

./configure 1
make

ln -s ../../OneLifeData7/categories .
ln -s ../../OneLifeData7/objects .
ln -s ../../OneLifeData7/transitions .
ln -s ../../OneLifeData7/tutorialMaps .
ln -s ../../OneLifeData7/dataVersionNumber.txt .


if [ -z $SERVER_VERSION ]
then
  SERVER_VERSION=`git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//'`
fi

echo $SERVER_VERSION > serverCodeVersionNumber.txt
