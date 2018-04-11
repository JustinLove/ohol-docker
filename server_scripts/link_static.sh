#!/bin/sh

if [ ! -e firstNames.txt ]
then
  ln -s $1firstNames.txt .
fi

if [ ! -e lastNames.txt ]
then
  ln -s $1lastNames.txt  
fi

if [ ! -e serverCodeVersionNumber.txt ]
then
  ln -s $1serverCodeVersionNumber.txt .
fi

if [ ! -e dataVersionNumber.txt ]
then
  ln -s $1dataVersionNumber.txt .
fi

if [ ! -e categories ]
then
  ln -s $1categories .
fi

if [ ! -e objects ]
then
  ln -s $1objects .
fi

if [ ! -e transitions ]
then
  ln -s $1transitions .
fi

if [ ! -e settings ]
then
  mkdir $1settings
fi

cp $1settings/* ./settings/
