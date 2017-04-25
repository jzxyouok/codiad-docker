#!/bin/bash

WORKSPACE=/your/workspace

docker run --name codiad -d --restart=always \
    -p 80:80 \
    -v ${WORKSPACE}:/w \
    codiad
