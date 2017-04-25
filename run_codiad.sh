#!/bin/bash

WORKSPACE=/your/workspace
CODIAD_DATA=$(pwd)/data
CODIAD_PLUGINS=$(pwd)/plugins
CODIAD_THEMES=$(pwd)/themes

mkdir -p ${WORKSPACE} ${CODIAD_DATA} ${CODIAD_PLUGINS} ${CODIAD_THEMES}

docker run --name codiad -d --restart=always \
    -p 80:80 \
    -v ${WORKSPACE}:/var/www/html/workspace \
    -v ${CODIAD_DATA}:/var/www/html/data \
    -v ${CODIAD_PLUGINS}:/var/www/html/plugins \
    -v ${CODIAD_THEMES}:/var/www/html/themes \
    xiangquan/codiad
