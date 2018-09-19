# Turtlebot3_burger

This repository contains all the software that runs on the Turtlebot3 , and just test .

# Reference

Turtlebot3 e-Manual  :  http://emanual.robotis.com/docs/en/platform/turtlebot3/autonomous_driving/#turtlebot3-autorace

# Developer

Wet-Chih , Lin ( kjoelovelife@gmail.com )

# Operate on raspberry pi for Turtlebot3 burger

* Step1. download dependencies

  `$ source ~/turtlebot3_burger/catkin_ws/dependencies_for_burger.sh`

* Step2. allow raspberry pi to use USB port for OpenCR without acquiring root permission , and upload the driver to openCR 1.0 .
  
  Note : raspberry pi must connet openCR with usb-port. 
  
  `$ source ~/turtlebot3_burger/catkin_ws/openCR_setup.sh`

* Step3. build catkin_ws
  
  `$ cd ~/turtlebot3_burger/catkin_ws`

  `$ catkin_make -j1`
  
  Then edit the ~/.bashrc , and write
  
  ` source ~/turtlebot3_burger/catkin_ws/devel/setup.bash `

  ` source ~/turtlebot3_burger/set_ros_master.sh HOSTNAME`
  
  ` export TURTLEBOT3_MODEL=burger `
  
  Note: We us laptop to be master , so " HOSTNAME " must be your hostname of laptop.
  
* Step4. set up SSH
 
   ` source ~/turtlebot3_burger/ssh_setup.sh `

# Operate on laptop

* Step1. download dependencies

  `$ source ~/turtlebot3_burger/catkin_ws/dependencies_for_burger.sh`

* Step2. build catkin_ws
  
  `$ cd ~/turtlebot3_burger/catkin_ws`

  `$ catkin_make`
  
  Then edit the ~/.bashrc , and write
  
  ` source ~/turtlebot3_burger/catkin_ws/devel/setup.bash `

  ` source ~/turtlebot3_burger/set_ros_master.sh `
  
  ` export TURTLEBOT3_MODEL=burger `
  
  Note: We us laptop to be master.

* Step3. set up SSH.
 
   ` source ~/turtlebot3_burger/ssh_setup.sh `

* Step4. copy ssh id from raspberry pi

  ` ssh-copy-id username@hostname.local `
  
   Note below information：
   
   1. username@hostname --> this is about raspberry pi information .
   2. raspberry pi and laptop must finish the step of 'set up SSH' .
  
