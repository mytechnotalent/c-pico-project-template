#!/bin/sh

cd pico/pico-sdk
git pull
git submodule update
cd ..
cd ..
cd src
rm -rf generated
mkdir generated
rm -rf build
mkdir build
cd build
export PICO_SDK_PATH=../../pico/pico-sdk
cmake -DCMAKE_BUILD_TYPE=Debug ..
make
cp *.elf ../../
cp *.uf2 ../../
