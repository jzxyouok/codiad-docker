#!/bin/bash

pushd $(dirname $0)

docker build -t codiad .

popd
