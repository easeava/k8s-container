#!/bin/bash

set -e

WORK_PATH=/home/ease/work/install

cd $WORK_PATH
git clone -b compose https://github.com/easeava/k8s-container.git k8s-compose && cd k8s-compose
docker-compose up -d
