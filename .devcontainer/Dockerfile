# [Choice] Ubuntu version -------------------------------------------------------------------------------------
# (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
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


# enable new "BUILDKIT" mode for Docker CLI -------------------------------------------------------------------
ENV DOCKER_BUILDKIT=1

# install needed packages and setup non-root user -------------------------------------------------------------
# Use a separate RUN statement to add your own dependencies. A user of "automatic" attempts to reuse an user
# ID if one already exists.
ARG USERNAME=automatic
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# copy build scripts ------------------------------------------------------------------------------------------
COPY build_scripts/*.sh /tmp/build_scripts/

# execute configuration scripts -------------------------------------------------------------------------------
RUN apt-get update \
    && /bin/bash /tmp/build_scripts/common_debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" "true" "true" \
    # Use Docker script from script library to set things up
    && /bin/bash /tmp/build_scripts/docker_in_docker_debian.sh "${ENABLE_NONROOT_DOCKER}" "${USERNAME}" "${USE_MOBY}" "${DOCKER_VERSION}" \
    # Clean up but leave install scripts for later
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# configure docker --------------------------------------------------------------------------------------------
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

# execute apt-get installs ------------------------------------------------------------------------------------
RUN /bin/bash /tmp/build_scripts/apt_installs.sh

# execute pip installs ----------------------------------------------------------------------------------------
RUN /bin/bash /tmp/build_scripts/pip_installs.sh

# execute gem installs ----------------------------------------------------------------------------------------
RUN /bin/bash /tmp/build_scripts/gem_installs.sh

# as vscode user ----------------------------------------------------------------------------------------------
USER vscode

# execute user installs ---------------------------------------------------------------------------------------
RUN /bin/bash /tmp/build_scripts/user_installs.sh

# copy adr-tools template -------------------------------------------------------------------------------------
COPY home/vscode/adr-tools/src/template.md /home/vscode/adr-tools/src/template.md

# as root user ------------------------------------------------------------------------------------------------
USER root

# clean build scripts -----------------------------------------------------------------------------------------
RUN rm -rf /tmp/build_scripts
