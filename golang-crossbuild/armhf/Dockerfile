FROM docker.elastic.co/beats-dev/golang-crossbuild:1.18.4-armhf

RUN apt-get update && \
    apt-get install -y libpcap-dev wget && \
    wget http://www.tcpdump.org/release/libpcap-1.10.1.tar.gz && \
    tar -zxvf libpcap-1.10.1.tar.gz && \
    rm -rf libpcap-1.10.1.tar.gz

RUN cd libpcap-1.10.1 && \
    export CC=armv7-linux-gnu-gcc && \
    ./configure --prefix=/usr/local || cat config.log && \
    make && \
    make install