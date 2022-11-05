FROM edo_demo_base:latest

# Set working directory ---------------------------------------------------------------------------------------
WORKDIR /

# copy c++ interpreter to lib64 directory interim fix ---------------------------------------------------------
RUN mkdir /lib64 \
    && cp lib/ld-linux-x86-64.so.2 lib64/ld-linux-x86-64.so.2
