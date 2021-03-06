#!/bin/bash
VIRTUAL_IP=10.10.2.6
INTERFACE=ens160
NETMASK_BIT=24
CHECK_PORT=6444
RID=10
VRID=160
MCAST_GROUP=224.0.0.18

docker run -itd --restart=always --name=keepalived-k8s --net=host --cap-add=NET_ADMIN -e VIRTUAL_IP=$VIRTUAL_IP -e INTERFACE=$INTERFACE -e CHECK_PORT=$CHECK_PORT -e RID=$RID -e VRID=$VRID -e NETMASK_BIT=$NETMASK_BIT -e MCAST_GROUP=$MCAST_GROUP keepalived:0.0.1
