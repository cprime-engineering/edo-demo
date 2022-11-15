FROM wind_river_release:0.0.0

# Set working directory ---------------------------------------------------------------------------------------
WORKDIR /

# copy smoke_test executable ----------------------------------------------------------------------------------
COPY build-bin/smoke_test /usr/bin/smoke_test

# copy entrypoint.sh ------------------------------------------------------------------------------------------
COPY docker/release/wind_river/wind_river_test/wind_river_test.entrypoint.sh /entrypoint.sh

# grant executable permissions to entrypoint.sh ---------------------------------------------------------------
RUN chmod +x /entrypoint.sh

# set container entrypoint to entrypoint.sh -------------------------------------------------------------------
ENTRYPOINT ["/entrypoint.sh"]
