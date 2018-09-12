#!/bin/bash

if [[ `id -u` -eq 0 ]] ; then
    echo "Do not run this with sudo (do not run random things with sudo!)." ;
    exit 1 ;
fi


sudo cp ~/catkin_ws 

export OPENCR_PORT=/dev/ttyACM0
export OPENCR_MODEL=burger
rm -rf ./opencr_update.tar.bz2
wget https://github.com/ROBOTIS-GIT/OpenCR/raw/develop/arduino/opencr_release/shell_update/opencr_update.tar.bz2 && tar -xvf opencr_update.tar.bz2 && cd ./opencr_update && ./update.sh $OPENCR_PORT $OPENCR_MODEL.opencr && cd ..
