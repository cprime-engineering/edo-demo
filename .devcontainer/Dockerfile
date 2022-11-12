# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT=ubuntu-22.04
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# build options -----------------------------------------------------------------------------------------------
# [Option] Install zsh
ARG INSTALL_ZSH="true"
# [Option] Upgrade OS packages to their latest versions
ARG UPGRADE_PACKAGES="false"
# [Option] Enable non-root Docker access in container
ARG ENABLE_NONROOT_DOCKER="true"
# [Option] Use the OSS Moby Engine instead of the licensed Docker Engine
ARG USE_MOBY="true"
# [Option] Engine/CLI Version
ARG DOCKER_VERSION="latest"

# Enable new "BUILDKIT" mode for Docker CLI
ENV DOCKER_BUILDKIT=1

# Install needed packages and setup non-root user. Use a separate RUN statement to add your
# own dependencies. A user of "automatic" attempts to reuse an user ID if one already exists.
ARG USERNAME=automatic
ARG USER_UID=1000
ARG USER_GID=$USER_UID
COPY library-scripts/*.sh /tmp/library-scripts/
RUN apt-get update \
    && /bin/bash /tmp/library-scripts/common-debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" "true" "true" \
    # Use Docker script from script library to set things up
    && /bin/bash /tmp/library-scripts/docker-in-docker-debian.sh "${ENABLE_NONROOT_DOCKER}" "${USERNAME}" "${USE_MOBY}" "${DOCKER_VERSION}" \
    # Clean up
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts/

VOLUME [ "/var/lib/docker" ]

# Setting the ENTRYPOINT to docker-init.sh will start up the Docker Engine
# inside the container "overrideCommand": false is set in devcontainer.json.
# The script will also execute CMD if you need to alter startup behaviors.
ENTRYPOINT [ "/usr/local/share/docker-init.sh" ]
CMD [ "sleep", "infinity" ]

# copy codespace .bashrc --------------------------------------------------------------------------------------
COPY home/vscode/.bashrc /home/vscode/.bashrc

# copy toolkit directory --------------------------------------------------------------------------------------
COPY opt/toolkit /opt/toolkit

# Update apt-get ----------------------------------------------------------------------------------------------
RUN apt-get update

# software-properties-common ----------------------------------------------------------------------------------
RUN pwd \
  && apt-get -y install software-properties-common --no-install-recommends

# install build essential -------------------------------------------------------------------------------------
RUN pwd \
  && apt-get -y install build-essential --no-install-recommends

# install cmake -----------------------------------------------------------------------------------------------
RUN pwd \
  && apt-get -y install cmake --no-install-recommends

# install unzip -----------------------------------------------------------------------------------------------
RUN pwd \
  && apt-get -y install unzip --no-install-recommends

# install clang-tidy ------------------------------------------------------------------------------------------
RUN pwd \
  && apt-get install -y clang-tidy --no-install-recommends

# install clang-format ----------------------------------------------------------------------------------------
RUN pwd \
  && apt-get install -y clang-format --no-install-recommends

# install uncrustify ------------------------------------------------------------------------------------------
RUN pwd \
  && apt-get install -y uncrustify --no-install-recommends

# install cppcheck --------------------------------------------------------------------------------------------
RUN pwd \
  && apt-get install -y cppcheck --no-install-recommends

# install include-what-you-use --------------------------------------------------------------------------------
RUN pwd \
  && apt-get install -y iwyu --no-install-recommends

# Install python tools ----------------------------------------------------------------------------------------
RUN pwd \
  && apt-get -y install python3-venv python3-pip python3-dev --no-install-recommends

# Install golang ----------------------------------------------------------------------------------------------
RUN pwd \
  && apt-get -y install golang --no-install-recommends

# Install nodejs ----------------------------------------------------------------------------------------------
RUN pwd \
  && curl -sL https://deb.nodesource.com/setup_19.x | sudo -E bash - \
  && apt-get update \
  && apt-get -y install nodejs --no-install-recommends \
  && npm install -g npm@9.1.1

# Install ruby ------------------------------------------------------------------------------------------------
RUN pwd \
  && apt-get -y install ruby-full --no-install-recommends

# Install java-11-jdk -----------------------------------------------------------------------------------------
RUN pwd \
  && apt-get -y install openjdk-11-jdk --no-install-recommends

# Install lcov ------------------------------------------------------------------------------------------------
RUN pwd \
  && apt-get -y install lcov --no-install-recommends

# install bash-completion -------------------------------------------------------------------------------------
RUN pwd \
  && apt-get -y install bash-completion --no-install-recommends

# Install pre-commit ------------------------------------------------------------------------------------------
RUN pip install pre-commit

# Install azure-cli -------------------------------------------------------------------------------------------
RUN pip install azure-cli

# Install behave ----------------------------------------------------------------------------------------------
RUN pip install behave

# Install pybind11 --------------------------------------------------------------------------------------------
RUN pip install pybind11

# Install matplotlib ------------------------------------------------------------------------------------------
RUN pip install matplotlib

# Install snyk ------------------------------------------------------------------------------------------------
RUN npm install snyk -g

# Install ember-cli -------------------------------------------------------------------------------------------
RUN npm install -g ember-cli

# Install github_changelog_generator --------------------------------------------------------------------------
RUN gem install github_changelog_generator

# Install bazel buildifier -------------------------------------------------------------------------------------
RUN go install github.com/bazelbuild/buildtools/buildifier@latest

# Install bazel buildozer --------------------------------------------------------------------------------------
RUN go install github.com/bazelbuild/buildtools/buildozer@latest

# Install grype -----------------------------------------------------------------------------------------------
RUN curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b ~/grype

# As vscode user ----------------------------------------------------------------------------------------------
USER vscode

# Install adr-tools -------------------------------------------------------------------------------------------
RUN git clone https://github.com/npryce/adr-tools.git /home/vscode/adr-tools \
  && cd /home/vscode/adr-tools && git checkout tags/3.0.0

# Copy adr-tools template -------------------------------------------------------------------------------------
COPY home/vscode/adr-tools/src/template.md /home/vscode/adr-tools/src/template.md
