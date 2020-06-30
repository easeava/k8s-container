#!/bin/bash

set -e

WORK_PATH=/home/ease/work/install

cd $WORK_PATH

if [[ -d k8s-compose ]]
then
  cd docker-compose && docker-compose stop && cd ../ && rm -rf k8s-compose
fi

git clone -b compose https://github.com/easeava/k8s-container.git k8s-compose && cd k8s-compose

if [[ $1 && $1 == 'master-01' ]]
then
  sed -i 's/BACKUP/MASTER/' ./keepalived/keepalived.conf
fi

docker-compose up --build -d