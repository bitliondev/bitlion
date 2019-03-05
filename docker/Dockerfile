FROM debian:stretch
LABEL maintainer="bitlioncoin Developers <dev@bitlioncoin.org>"
LABEL description="Dockerised bitlioncoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
