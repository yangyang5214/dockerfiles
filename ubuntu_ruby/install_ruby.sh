#!/bin/bash

set -ex

cd /root

wget https://www.openssl.org/source/openssl-1.1.1o.tar.gz
tar -zxvf openssl-1.1.1o.tar.gz && cd openssl-1.1.1o && ./config && make && make install

cd /root
wget 'https://cache.ruby-lang.org/pub/ruby/3.1/ruby-3.1.2.tar.gz'
tar -zxvf ruby-3.1.2.tar.gz
cd ruby-3.1.2

apt install zlib1g-dev -y
cd ext/zlib
ruby ./extconf.rb && make && make install
cd ../..

./configure --with-openssl-dir=/usr/local/ssl
make && make install
