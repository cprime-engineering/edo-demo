#!/usr/bin/env bash

# add ros repository sources ----------------------------------------------------------------------------------
echo "deb http://packages.ros.org/ros/ubuntu focal main" | tee /etc/apt/sources.list.d/ros-focal.list

# add official ros keyring ------------------------------------------------------------------------------------
apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
apt-get update

# install ros dependencies ------------------------------------------------------------------------------------
apt-get install -y --no-install-recommends \
    libboost-all-dev \
    libconsole-bridge-dev \
    liblog4cxx-dev \
    libgtest-dev \
    libtinyxml-dev \
    libtinyxml2-dev \
    python3-catkin-tools \
    python3-empy \
    python3-rosinstall-generator \
    python3-wstool \
    python3-gencpp \
    python3-genpy

# install ros-noetic-ros-base ---------------------------------------------------------------------------------
apt-get -y install ros-noetic-ros-base --no-install-recommends
