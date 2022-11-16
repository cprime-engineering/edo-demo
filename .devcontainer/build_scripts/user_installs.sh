#!/usr/bin/env bash

# Install grype -----------------------------------------------------------------------------------------------
curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b ~/grype

# Install adr-tools -------------------------------------------------------------------------------------------
git clone https://github.com/npryce/adr-tools.git /home/vscode/adr-tools
cd /home/vscode/adr-tools
git checkout tags/3.0.0
