FROM ros_noetic_release:0.0.0

# Set working directory ---------------------------------------------------------------------------------------
WORKDIR /

# copy smoke_test executable ----------------------------------------------------------------------------------
COPY build-bin/spot_micro/cpp/apps/smoke_test/src/smoke_test /usr/bin/smoke_test

# copy entrypoint.sh ------------------------------------------------------------------------------------------
COPY docker/ros_noetic/ros_noetic_test/ros_noetic_test.entrypoint.sh /entrypoint.sh

# grant executable permissions to entrypoint.sh ---------------------------------------------------------------
RUN chmod +x /entrypoint.sh

# set container entrypoint to entrypoint.sh -------------------------------------------------------------------
ENTRYPOINT ["/entrypoint.sh"]
