FROM ubuntu:latest
MAINTAINER Doug Chimento <dchimento@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -qq update && \
    apt-get -qqy install --no-install-recommends \
       build-essential libjson-c-dev libcurl4-openssl-dev autoconf libz-dev libssl-dev &&\
     rm -rf /var/lib/apt/lists/* &&\
     mkdir -p /root/build

WORKDIR /root/build
