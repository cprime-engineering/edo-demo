#!/usr/bin/env bash

# Install rvm -------------------------------------------------------------------------------------------------
gpg2 --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io -o rvm.sh | bash -s stable --rails
. /home/vscode/.rvm/scripts/rvm
rvm install 3.0.0
rvm use 3.0.0

# Install github_changelog_generator --------------------------------------------------------------------------
gem install github_changelog_generator

# Install grype -----------------------------------------------------------------------------------------------
curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b ~/grype

# Install adr-tools -------------------------------------------------------------------------------------------
git clone https://github.com/npryce/adr-tools.git /home/vscode/adr-tools
cd /home/vscode/adr-tools
git checkout tags/3.0.0
