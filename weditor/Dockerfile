FROM alpine:3.11

RUN apk update \
    && apk add python-dev \
    && apk add python3-dev \
    && apk add python3 \
    && apk add libxml2 \
    && apk add libxml2-dev \
    && apk add libxslt \
    && apk add libxslt-dev

RUN apk add usbutils

RUN /usr/bin/python3.8 -m pip install --upgrade pip

RUN pip3 install Pillow

RUN pip3 install uiautomator2

RUN pip3 install weditor

EXPOSE 17310

ENTRYPOINT weditor


