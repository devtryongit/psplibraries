#!/bin/sh
# cmake-toolchain-script.sh by take_cheeze (takechi101010@gmail.com)
PSP_CMAKE_PATH=$(psp-config --pspdev-path)/bin
TOOLCHAIN_SCRIPT_PATH=$(psp-config --psp-prefix)/share/cmake-2.8/Modules/Platform

## copy toolchain script and psp-cmake
install -d $TOOLCHAIN_SCRIPT_PATH
install -m644 ../patches/PSP.cmake $TOOLCHAIN_SCRIPT_PATH || { exit 1; }
install -d $PSP_CMAKE_PATH
install -m755 ../patches/psp-cmake $PSP_CMAKE_PATH || { exit 1; }
