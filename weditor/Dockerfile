FROM alpine:3.11

RUN apk update \
    && apk add python-dev \
    && apk add python3-dev \
    && apk add python3 \
    && apk add libxml2 \
    && apk add libxml2-dev \
    && apk add libxslt \
    && apk add libxslt-dev

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --upgrade Pillow

RUN pip3 install uiautomator2

RUN pip3 install weditor

ENTRYPOINT weditor


