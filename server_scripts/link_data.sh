#!/bin/sh

if [ ! -e $1 ]
then
  mkdir $1
fi

ln -s $1lookTime.db .
ln -s $1map.db .
ln -s $1mapTime.db .
ln -s $1biome.db .
ln -s $1eve.db .
ln -s $1floor.db .
ln -s $1floorTime.db .
ln -s $1playerStats.db .
ln -s $1recentPlacements.txt .
ln -s $1eveRadius.txt .

if [ ! -e $1settings ]
then
  mkdir $1settings
fi
ln -s ../$1settings/lastApocalypseNumber.ini settings/

if [ ! -e $1backup ]
then
  mkdir $1backup
fi
ln -s $1backup .
