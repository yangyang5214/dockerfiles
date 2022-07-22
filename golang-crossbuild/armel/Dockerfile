FROM docker.elastic.co/beats-dev/golang-crossbuild:1.18.4-armel

RUN apt-get update && \
    apt-get install -y libpcap-dev wget && \
    cd /usr/local && \
    wget http://www.tcpdump.org/release/libpcap-1.10.1.tar.gz && \
    tar -zxvf libpcap-1.10.1.tar.gz && \
    rm -rf libpcap-1.10.1.tar.gz && \
    cd libpcap-1.10.1 && \
    export CC=aarch64-linux-gnu-gcc && \
    ./configure && \
    make && \
    make install