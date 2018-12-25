#!/bin/sh

if [ ! firstNames.txt ]
then
  rm firstNames.txt
fi
ln -s $1firstNames.txt .

if [ ! lastNames.txt ]
then
  rm lastNames.txt
fi
ln -s $1lastNames.txt  

if [ ! serverCodeVersionNumber.txt ]
then
  rm serverCodeVersionNumber.txt
fi
ln -s $1serverCodeVersionNumber.txt .

if [ ! dataVersionNumber.txt ]
then
  rm dataVersionNumber.txt
fi
ln -s $1dataVersionNumber.txt .

if [ ! categories ]
then
  rm categories
fi
ln -s $1categories .

if [ ! objects ]
then
  rm objects
fi
ln -s $1objects .

if [ ! transitions ]
then
  rm transitions
fi
ln -s $1transitions .

if [ ! -e settings ]
then
  mkdir settings
fi

cp $1settings/* ./settings/
