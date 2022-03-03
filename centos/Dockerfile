FROM centos:centos7

COPY go1.17.7.linux-amd64.tar.gz /opt

RUN yum install vim -y

WORKDIR /opt

RUN tar -C /usr/local -xzf go1.17.7.linux-amd64.tar.gz

RUN ln -sv /usr/local/go/bin/go /bin

WORKDIR /data

VOLUME ["/data"]

CMD ["echo", "hello" ]



