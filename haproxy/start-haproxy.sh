#!/bin/bash
MasterIP1=10.10.2.8
MasterIP2=10.10.2.9
MasterIP3=10.10.2.10
MasterPort=6443

docker run -d --restart=always --name haproxy-k8s -p 6444:6444 -e MasterIP1=$MasterIP1 -e MasterIP2=$MasterIP2 -e MasterIP3=$MasterIP3 -e MasterPort=$MasterPort haproxy:0.0.1
