#!/usr/bin/env bash

# add ros repository sources ----------------------------------------------------------------------------------
add-apt-repository -y universe
apt-get update
curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# install ros packages ---------------------------------------------------------------------------------------
apt-get update
apt-get -y upgrade
apt-get -y install ros-humble-ros-base  --no-install-recommends
apt-get -y install ros-dev-tools  --no-install-recommends
