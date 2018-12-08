#!/bin/sh

cd OneLife

./configure 5

cd gameSource

make

mv OneLife WonLife.exe
7z a ../../WonLife-`cat ../server/serverCodeVersionNumber.txt`.zip WonLife.exe
