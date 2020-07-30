FROM alpine:3.12.0 as builder

RUN apk add --no-cache --virtual build-dependencies \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    git \
    build-base \
    py3-pip

RUN git clone --depth 1 https://github.com/olofk/fusesoc
WORKDIR /fusesoc

RUN pip install -e .
RUN /usr/bin/fusesoc init -y

