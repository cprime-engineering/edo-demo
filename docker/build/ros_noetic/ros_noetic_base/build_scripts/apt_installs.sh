#!/usr/bin/env bash

# Update apt-get ----------------------------------------------------------------------------------------------
apt-get update

# Install python tools ----------------------------------------------------------------------------------------
apt-get -y install python3-venv python3-pip python3-dev --no-install-recommends
