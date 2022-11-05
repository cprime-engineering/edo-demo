FROM edo_demo_release:latest

RUN mkdir /lib64 \
    && cp lib/ld-linux-x86-64.so.2 lib64/ld-linux-x86-64.so.2

COPY docker-bin/smoke_test /opt/smoke-test/smoke_test

# copy entrypoint.sh ------------------------------------------------------------------------------------------
COPY docker/edo_demo_test/edo_demo_test.entrypoint.sh /entrypoint.sh

# grant executable permissions to entrypoint.sh ---------------------------------------------------------------
RUN chmod +x /entrypoint.sh

# set container entrypoint to entrypoint.sh -------------------------------------------------------------------
ENTRYPOINT ["/entrypoint.sh"]
