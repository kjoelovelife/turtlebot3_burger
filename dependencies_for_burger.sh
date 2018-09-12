#!/bin/bash


if [[ `id -u` -eq 0 ]] ; then
    echo "Do not run this with sudo (do not run random things with sudo!)." ;
    exit 1 ;
fi

# Use APT install
sudo apt-get install -y \
                 ros-kinetic-joy \
                 ros-kinetic-teleop-twist-joy \
                 ros-kinetic-teleop-twist-keyboard \
                 ros-kinetic-laser-proc \ 
                 ros-kinetic-rgbd-launch \
                 ros-kinetic-depthimage-to-laserscan \ 
                 ros-kinetic-rosserial-arduino \ 
                 ros-kinetic-rosserial-python \ 
                 ros-kinetic-rosserial-server \ 
                 ros-kinetic-rosserial-client \ 
                 ros-kinetic-rosserial-msgs \
                 ros-kinetic-amcl \ 
                 ros-kinetic-map-server \ 
                 ros-kinetic-move-base \ 
                 ros-kinetic-urdf \ 
                 ros-kinetic-xacro \ 
                 ros-kinetic-compressed-image-transport \ 
                 ros-kinetic-rqt-image-view \ 
                 ros-kinetic-gmapping \ 
                 ros-kinetic-navigation \ 
                 ros-kinetic-interactive-markers \
                 ros-kinetic-rosserial-python \
                 ros-kinetic-tf \
                 ros-kinetic-joy \
                 ros-kinetic-joystick-drivers \
                 ros-kinetic-teleop-twist-joy \
                 ros-kinetic-image-transport \ 
                 ros-kinetic-cv-bridge \
                 ros-kinetic-vision-opencv \
                 ros-kinetic-image-proc \
                 python-opencv \
                 libopencv-dev
 

# These don't have an APT package

# ROS Control App : https://play.google.com/store/apps/details?id=com.robotca.ControlApp

# The following commands allow to use USB port for OpenCR without acquiring root permission.
#rosrun turtlebot3_bringup create_udev_rules




# None of this should be needed. Next time you think you need it, let me know and we figure it out. -AC
# sudo pip install --upgrade pip setuptools wheel
