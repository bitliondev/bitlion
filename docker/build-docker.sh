#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-bitlioncoinpay/bitlioncoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/bitlioncoind docker/bin/
cp $BUILD_DIR/src/bitlioncoin-cli docker/bin/
cp $BUILD_DIR/src/bitlioncoin-tx docker/bin/
strip docker/bin/bitlioncoind
strip docker/bin/bitlioncoin-cli
strip docker/bin/bitlioncoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
