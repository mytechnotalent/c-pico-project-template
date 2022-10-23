#!/bin/sh

cd pico
git clone https://github.com/raspberrypi/pico-sdk.git
cd pico-sdk
git submodule init
git submodule update
