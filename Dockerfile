FROM golang:1.10.2-alpine3.7

RUN apt-get -q update && \
  apt-get -y -q install python-pip curl git vim bash

ENTRYPOINT [ "/bin/sh" ]