FROM edo_demo_release:latest

# Set working directory ---------------------------------------------------------------------------------------
WORKDIR /

# copy smoke_test executable ----------------------------------------------------------------------------------
COPY docker-bin/smoke_test /usr/bin/smoke_test

# copy entrypoint.sh ------------------------------------------------------------------------------------------
COPY docker/edo_demo_test/edo_demo_test.entrypoint.sh /entrypoint.sh

# grant executable permissions to entrypoint.sh ---------------------------------------------------------------
RUN chmod +x /entrypoint.sh

# set container entrypoint to entrypoint.sh -------------------------------------------------------------------
ENTRYPOINT ["/entrypoint.sh"]
