#!/bin/sh

if [ -e firstNames.txt ]
then
  rm firstNames.txt
fi

if [ -e $1firstNames.txt ]
then
  ln -s $1firstNames.txt .
fi

if [ -e lastNames.txt ]
then
  rm lastNames.txt
fi

if [ -e $1lastNames.txt ]
then
  ln -s $1lastNames.txt .
fi

if [ -e serverCodeVersionNumber.txt ]
then
  rm serverCodeVersionNumber.txt
fi
ln -s $1serverCodeVersionNumber.txt .

if [ -e dataVersionNumber.txt ]
then
  rm dataVersionNumber.txt
fi
ln -s $1dataVersionNumber.txt .

if [ -e categories ]
then
  rm categories
fi
ln -s $1categories .

if [ -e objects ]
then
  rm objects
fi
ln -s $1objects .

if [ -e transitions ]
then
  rm transitions
fi
ln -s $1transitions .

if [ ! -e settings ]
then
  mkdir settings
fi

cp $1settings/* ./settings/
