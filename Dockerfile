FROM golang

RUN apt-get -q update && \
  apt-get -y -q install python-pip curl git vim bash

ENTRYPOINT [ "/bin/sh" ]