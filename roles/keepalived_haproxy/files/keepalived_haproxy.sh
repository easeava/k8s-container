#!/bin/bash

set -e

WORK_PATH=/home/ease/work/install

if [[ $1 && $1 == 'master-01' ]]
then
  sed -i 's/BACKUP/MASTER/' ${WORK_PATH}/k8s-compose/keepalived/keepalived.conf
fi

cd $WORK_PATH && rm -rf k8s-compose
git clone -b compose https://github.com/easeava/k8s-container.git k8s-compose && cd k8s-compose
docker-compose stop
docker-compose up --build -d