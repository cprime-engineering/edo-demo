FROM ros:noetic

# Set working directory ---------------------------------------------------------------------------------------
WORKDIR /

# copy build scripts ------------------------------------------------------------------------------------------
COPY docker/build/ros_noetic/ros_noetic_base/build_scripts/*.sh /tmp/build_scripts/

# execute apt-get installs ------------------------------------------------------------------------------------
RUN /bin/bash /tmp/build_scripts/apt_installs.sh

# execute pip installs ----------------------------------------------------------------------------------------
RUN /bin/bash /tmp/build_scripts/pip_installs.sh

# clean build scripts -----------------------------------------------------------------------------------------
RUN rm -rf /tmp/build_scripts
