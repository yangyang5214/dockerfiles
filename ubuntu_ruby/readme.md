> ubuntu + ruby3.x

自己编译 ruby

目前两个问题

- ssl. 自己编译，然后指定 --with-openssl-dir

```shell
wget https://www.openssl.org/source/openssl-1.1.1o.tar.gz
tar -zxvf openssl-1.1.1o.tar.gz && cd openssl-1.1.1o && ./config && make && make install

./configure --with-openssl-dir=/usr/local/ssl
make && make install
```

- zlib 包

```shell
apt install zlib1g-dev -y

cd ext/zlib
ruby ./extconf.rb && make && make install
```