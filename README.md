# turtlebot3_burger

This repository contains all the software that runs on the Turtlebot3 , and just test .

# reference

Turtlebot3 e-Manual  :  http://emanual.robotis.com/docs/en/platform/turtlebot3/autonomous_driving/#turtlebot3-autorace

# Operate on laptop

* step1. download dependencies

  `$ source ~/turtlebot3_burger/catkin_ws/dependencies_for_burger.sh`

* step2. build catkin_ws
  
  `$ cd ~/turtlebot3_burger/catkin_ws`

  `$ catkin_make`

# Operate on raspberry pi for Turtlebot3 burger

* step1. download dependencies

  `$ source dependencies_for_burger.sh`

* step2. allow raspberry pi to use USB port for OpenCR without acquiring root permission.
  
  `$ source ~/turtlebot3_burger/catkin_ws/openCR_setup.sh`

* step3. build catkin_ws
  
  `$ cd ~/turtlebot3_burger/catkin_ws/openCR_setup.sh`

  `$ catkin_make`
