#!/bin/bash

sudo apt update
sudo apt full-upgrade
#sudo apt install ros-melodic-moveit
cd $HOME/catkin_ws/src
git clone https://github.com/ros-planning/panda_moveit_config.git
cd ..
catkin build
cd src
git clone https://github.com/frankaemika/franka_ros.git
cd franka_ros
mv -f franka_description $HOME/catkin_ws/src
rmdir -f franka_ros

echo ""

echo "Ok! Now, if you want to execute your node,
you can use roslaunch panda_moveit_config demo.launch"

echo "By L.T."
