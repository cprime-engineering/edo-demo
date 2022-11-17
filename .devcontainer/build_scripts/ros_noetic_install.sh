#!/usr/bin/env bash

# add ros repository sources ----------------------------------------------------------------------------------
echo "deb http://packages.ros.org/ros/ubuntu focal main" | tee /etc/apt/sources.list.d/ros-focal.list

# add official ROS keyring ------------------------------------------------------------------------------------
apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# install ros-noetic-ros-base ---------------------------------------------------------------------------------
apt-get update
apt-get -y install ros-noetic-ros-base --no-install-recommends
