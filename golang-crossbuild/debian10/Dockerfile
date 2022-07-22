FROM docker.elastic.co/beats-dev/golang-crossbuild:1.18.4-main-debian10

RUN sed -i 's#http://deb.debian.org#https://mirrors.163.com#g' /etc/apt/sources.list && \
    dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y flex bison wget libpcap-dev:i386 && \
    cd /usr/local && \
    wget http://www.tcpdump.org/release/libpcap-1.10.1.tar.gz && \
    tar -zxvf libpcap-1.10.1.tar.gz && \
    rm -rf libpcap-1.10.1.tar.gz && \
    cd libpcap-1.10.1 && \
    ./configure && \
    make && \
    make install
