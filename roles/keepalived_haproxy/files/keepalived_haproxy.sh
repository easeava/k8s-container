#!/bin/bash

set -e

WORK_PATH=/home/ease/work/install
WORK_NAME=k8s-compose

cd $WORK_PATH

if [[ -d $WORK_NAME ]]
then
  cd $WORK_NAME && dcoker-compose stop && cd ../ && rm -rf $WORK_NAME
fi

git clone -b compose https://github.com/easeava/k8s-container.git $WORK_NAME && cd $WORK_NAME

if [[ $1 && $1 == 'master-01' ]]
then
  sed -i 's/BACKUP/MASTER/' ./keepalived/keepalived.conf
fi

docker-compose up --build -d