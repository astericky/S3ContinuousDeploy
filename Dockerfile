FROM golang:1.10

RUN apt-get -q update && \
  apt-get -y -q install python-pip curl git vim bash

RUN mkdir /app
WORKDIR /app

ENTRYPOINT [ "/bin/sh" ]