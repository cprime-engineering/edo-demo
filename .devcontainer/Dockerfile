FROM mcr.microsoft.com/vscode/devcontainers/universal:2-linux

# As root user ------------------------------------------------------------------------------------------------
USER root

# copy codespace .bashrc --------------------------------------------------------------------------------------
COPY home/codespace/.bashrc /home/codespace/.bashrc

# copy toolkit directory --------------------------------------------------------------------------------------
COPY opt/toolkit /opt/toolkit

# copy aarch64 compile toolchain ------------------------------------------------------------------------------
COPY opt/aarch64-linux-gnu /opt/aarch64-linux-gnu

# As codespace user -------------------------------------------------------------------------------------------
USER codespace

# Install pre-commit ------------------------------------------------------------------------------------------
RUN pip install pre-commit

# Install azure-cli -------------------------------------------------------------------------------------------
RUN pip install azure-cli

# Install behave ----------------------------------------------------------------------------------------------
RUN pip install behave

# Install pybind11 --------------------------------------------------------------------------------------------
RUN pip install pybind11

# Install snyk ------------------------------------------------------------------------------------------------
RUN npm install snyk -g

# Install ember-cli -------------------------------------------------------------------------------------------
RUN npm install -g ember-cli

# Install github_changelog_generator --------------------------------------------------------------------------
RUN gem install github_changelog_generator

# As codespace user -------------------------------------------------------------------------------------------
USER codespace

# Install bazel buildifier -------------------------------------------------------------------------------------
RUN go install github.com/bazelbuild/buildtools/buildifier@latest

# Install bazel buildozer --------------------------------------------------------------------------------------
RUN go install github.com/bazelbuild/buildtools/buildozer@latest

# Install grype -----------------------------------------------------------------------------------------------
RUN curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b ~/grype

# Install adr-tools -------------------------------------------------------------------------------------------
RUN git clone https://github.com/npryce/adr-tools.git ~/adr-tools \
	&& cd ~/adr-tools && git checkout tags/3.0.0

# As root user ------------------------------------------------------------------------------------------------
USER root

# Update apt-get ----------------------------------------------------------------------------------------------
RUN apt-get update

# Install lcov ------------------------------------------------------------------------------------------------
RUN pwd \
  && apt-get update \
  && apt-get -y install lcov --no-install-recommends

# As codespace user -------------------------------------------------------------------------------------------
USER codespace

# Copy adr-tools template -------------------------------------------------------------------------------------
COPY home/codespace/adr-tools/src/template.md /home/codespace/adr-tools/src/template.md
