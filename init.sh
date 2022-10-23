#!/bin/sh

cp ~/.vimrc ~/.vimrc_bak
cp .vimrc ~/
rm -rf pico
mkdir pico
cd pico
git submodule add https://github.com/raspberrypi/pico-sdk.git
cd pico-sdk
git submodule init
git submodule update
cd ..
cd ..
mkdir src
cd src
touch main.c
cp ../pico/pico-sdk/external/pico_sdk_import.cmake .
cp ../CMakeLists.txt .
cp ../ws2812.pio .
