FROM ubuntu:18.04

RUN apt update && apt install -y zlib1g-dev wget openssl vim ruby-full python3 python3-pip && gem install bundler

RUN bundle config --global silence_root_warning true \
    && rm -rf /usr/local/bundle/cache \
    && chmod -R a+r /usr/local/bin/bundle

COPY install_ruby.sh .

RUN /bin/bash install_ruby.sh

VOLUME /data

CMD ["echo", "hello ruby"]
