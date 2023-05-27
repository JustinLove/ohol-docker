#!/bin/sh

if [ -e maleNames.txt ]
then
  rm maleNames.txt
fi

if [ -e $1maleNames.txt ]
then
  ln -s $1maleNames.txt .
fi

if [ -e femaleNames.txt ]
then
  rm femaleNames.txt
fi

if [ -e $1femaleNames.txt ]
then
  ln -s $1femaleNames.txt .
fi

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

if [ -e wordList.txt ]
then
  rm wordList.txt
fi

if [ -e $1wordList.txt ]
then
  ln -s $1wordList.txt .
fi

if [ -e curseWordList.txt ]
then
  rm curseWordList.txt
fi

if [ -e $1curseWordList.txt ]
then
  ln -s $1curseWordList.txt .
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

if [ -e tutorialMaps ]
then
  rm tutorialMaps
fi
ln -s $1tutorialMaps .

if [ ! -e settings ]
then
  mkdir settings
fi

cp $1settings/* ./settings/
