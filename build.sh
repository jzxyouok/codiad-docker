#!/bin/bash

SRC=Codiad-v.2.8.1

if [ ! -d "${SRC}" ]; then
    unzip "${SRC}".zip
fi

docker build -t codiad .
