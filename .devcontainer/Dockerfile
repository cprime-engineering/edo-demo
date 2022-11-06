FROM mcr.microsoft.com/vscode/devcontainers/universal:2-linux

# As root user ------------------------------------------------------------------------------------------------
USER root

# copy codespace .bashrc --------------------------------------------------------------------------------------
COPY home/codespace/.bashrc /home/codespace/.bashrc

# copy toolkit directory --------------------------------------------------------------------------------------
COPY opt/toolkit /opt/toolkit

# As codespace user -------------------------------------------------------------------------------------------
USER codespace

# Install pre-commit ------------------------------------------------------------------------------------------
RUN pip install pre-commit

# install azure-cli --------------------------------------------------------------------------------
RUN pip install azure-cli

# Install snyk ------------------------------------------------------------------------------------------------
RUN npm install snyk -g

# Install ember-cli -------------------------------------------------------------------------------------------
RUN npm install -g ember-cli

# Install github_changelog_generator --------------------------------------------------------------------------
RUN gem install github_changelog_generator

# As codespace user -------------------------------------------------------------------------------------------
USER codespace

# Install grype -----------------------------------------------------------------------------------------------
RUN curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b ~/grype

# Install adr-tools -------------------------------------------------------------------------------------------
RUN git clone https://github.com/npryce/adr-tools.git ~/adr-tools \
	&& cd ~/adr-tools && git checkout tags/3.0.0

COPY home/codespace/adr-tools/src/template.md /home/codespace/adr-tools/src/template.md
