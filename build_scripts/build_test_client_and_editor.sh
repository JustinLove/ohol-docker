#!/bin/sh

cd OneLife

./configure 1

cd gameSource

make

echo 1 > settings/useCustomServer.ini

sh ./makeEditor.sh

ln -s ../../OneLifeData7/animations .
ln -s ../../OneLifeData7/categories .
ln -s ../../OneLifeData7/ground .
ln -s ../../OneLifeData7/music .
ln -s ../../OneLifeData7/objects .
ln -s ../../OneLifeData7/overlays .
ln -s ../../OneLifeData7/scenes .
ln -s ../../OneLifeData7/sounds .
ln -s ../../OneLifeData7/sprites .
ln -s ../../OneLifeData7/transitions .

