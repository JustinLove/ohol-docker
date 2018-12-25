#!/bin/sh

gameClientVersion=$(grep versionNumber gameSource/game.cpp | head -1 | sed -e 's/[^0-9]*//g' );
patchVersion=$(cat patches-master/patchVersionNumber.txt );
packageVersion=0

cat <<EOF
IDI_ICON1 ICON DISCARDABLE "icon.ico"
1 VERSIONINFO
FILEVERSION     ${gameClientVersion},${patchVersion},${packageVersion}
PRODUCTVERSION  ${gameClientVersion}
BEGIN
  BLOCK "StringFileInfo"
  BEGIN
    BLOCK "040904E4"
    BEGIN
      VALUE "CompanyName", "Wondible"
      VALUE "FileDescription", "One Hour One Life (Wondible's patches)"
      VALUE "FileVersion", "${gameClientVersion}.${patchVersion}.${packageVersion}"
      VALUE "InternalName", "WonLife"
      VALUE "LegalCopyright", "Jason Rohrer - Public Domain"
      VALUE "OriginalFilename", "WonLife.exe"
      VALUE "ProductName", "One Hour One Life"
      VALUE "ProductVersion", "${gameClientVersion}"
    END
  END
  BLOCK "VarFileInfo"
  BEGIN
    VALUE "Translation", 0x409, 1252
  END
END
EOF
