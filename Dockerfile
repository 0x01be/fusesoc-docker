FROM alpine:3.12.0 as builder

RUN apk add --no-cache --virtual build-dependencies \
    git \
    build-base \
    py3-pip

RUN git clone --depth 1 https://github.com/olofk/fusesoc
WORKDIR /fusesoc

RUN pip install -e .

