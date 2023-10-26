#!/bin/zsh
set -ex

VERSION="0.0.1"

docker build -t tokamak-server:$VERSION .
docker tag tokamak-server:$VERSION loganoconnell/tokamak-server:$VERSION
docker image push loganoconnell/tokamak-server:$VERSION
