#!/usr/bin/env bash

# Update apt-get ----------------------------------------------------------------------------------------------
apt-get update

# software-properties-common ----------------------------------------------------------------------------------
apt-get -y install software-properties-common --no-install-recommends

# install build essential -------------------------------------------------------------------------------------
apt-get -y install build-essential --no-install-recommends

# install cmake -----------------------------------------------------------------------------------------------
apt-get -y install cmake --no-install-recommends

# install unzip -----------------------------------------------------------------------------------------------
apt-get -y install unzip --no-install-recommends

# install clang-tidy ------------------------------------------------------------------------------------------
apt-get install -y clang-tidy --no-install-recommends

# install clang-format ----------------------------------------------------------------------------------------
apt-get install -y clang-format --no-install-recommends

# install uncrustify ------------------------------------------------------------------------------------------
apt-get install -y uncrustify --no-install-recommends

# install cppcheck --------------------------------------------------------------------------------------------
apt-get install -y cppcheck --no-install-recommends

# install include-what-you-use --------------------------------------------------------------------------------
apt-get install -y iwyu --no-install-recommends

# Install python tools ----------------------------------------------------------------------------------------
apt-get -y install python3-venv python3-pip python3-dev --no-install-recommends

# Install golang ----------------------------------------------------------------------------------------------
add-apt-repository -y ppa:longsleep/golang-backports
apt-get update
apt-get -y install golang --no-install-recommends


# Install nodejs ----------------------------------------------------------------------------------------------
curl -sL https://deb.nodesource.com/setup_19.x | sudo -E bash -
apt-get update
apt-get -y install nodejs --no-install-recommends
npm install -g npm@9.1.1

# Install ruby ------------------------------------------------------------------------------------------------
apt-get -y install ruby-full --no-install-recommends

# Install java-11-jdk -----------------------------------------------------------------------------------------
apt-get -y install openjdk-11-jdk --no-install-recommends

# Install lcov ------------------------------------------------------------------------------------------------
apt-get -y install lcov --no-install-recommends

# install bash-completion -------------------------------------------------------------------------------------
apt-get -y install bash-completion --no-install-recommends
