#!/bin/sh
cd /tmp
wget https://www.libsdl.org/release/SDL-devel-1.2.15-mingw32.tar.gz
wget https://iweb.dl.sourceforge.net/project/ezwinports/libpng-1.6.12-w32-bin.zip
wget https://iweb.dl.sourceforge.net/project/ezwinports/zlib-1.2.8-2-w32-bin.zip
tar -xvzf SDL-devel-1.2.15-mingw32.tar.gz
7z x -o./libpng libpng-1.6.12-w32-bin.zip
7z x -y -o./libpng zlib-1.2.8-2-w32-bin.zip
 
cp -a ./SDL-1.2.15/include/. /usr/i686-w64-mingw32/include/
cp -a ./SDL-1.2.15/lib/. /usr/i686-w64-mingw32/lib/
cp -a ./SDL-1.2.15/bin/. /usr/i686-w64-mingw32/lib/

cp -a ./libpng/include/. /usr/i686-w64-mingw32/include/
cp -a ./libpng/lib/. /usr/i686-w64-mingw32/lib/
cp -a ./libpng/bin/*.dll /usr/i686-w64-mingw32/lib/

cp -a /usr/include/GL/glext.h /usr/i686-w64-mingw32/include/GL/

rm -rf ./SDL-1.2.15
rm -rf ./libpng
rm SDL-devel-1.2.15-mingw32.tar.gz
rm libpng-1.6.12-w32-bin.zip
rm zlib-1.2.8-2-w32-bin.zip

#cd /ohol/
#cp cross/* minorGems/game/platforms/SDL/
