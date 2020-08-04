FROM 0x01be/alpine:edge as builder

RUN apk add --no-cache --virtual fusesoc-build-dependencies \
    git \
    build-base \
    py3-pip

RUN git clone --depth 1 https://github.com/olofk/fusesoc
WORKDIR /fusesoc

RUN pip install -e .
RUN /usr/bin/fusesoc init -y

