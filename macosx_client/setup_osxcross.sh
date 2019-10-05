#!/bin/sh
export MACOSX_DEPLOYMENT_TARGET=10.7
osxcross-macports select-mirror <<-END
1
END
osxcross-macports install libsdl
#osxcross-macports install libsdl-framework
#ln -s /opt/osxcross/target/macports/pkgs/opt/local /opt/
