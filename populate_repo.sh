#!/bin/sh

cd ..
echo enter folder name:
read folder_name
mkdir $folder_name
cp c-pico-project-template/.gitignore $folder_name
cp c-pico-project-template/LICENSE $folder_name
cp c-pico-project-template/.vimrc $folder_name
cp c-pico-project-template/flash.sh $folder_name
cp c-pico-project-template/build.sh $folder_name
cp c-pico-project-template/populate_submodules_on_clone.sh $folder_name
cp c-pico-project-template/init.sh $folder_name
cp c-pico-project-template/ws2812.pio $folder_name
cp c-pico-project-template/CMakeLists.txt $folder_name
cd $folder_name
git init .
git config --global init.defaultBranch main
git branch -m main
./init.sh
