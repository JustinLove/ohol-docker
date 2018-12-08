#!/bin/sh

cd OneLife

./configure 5

cd gameSource

make

mv OneLife OneLife.exe
7z a ../../OneLife-`cat ../server/serverCodeVersionNumber.txt`.zip OneLife.exe
