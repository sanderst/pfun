#!/bin/bash

cp /home/caretaker/pfun/conf/agent/etc/hostname /etc/hostname
cp /home/caretaker/pfun/conf/agent/etc/hosts /etc/hosts
cp /home/caretaker/pfun/conf/agent/etc/network/interfaces /etc/network/interfaces

apt-get update -y 
apt-get upgrade -y
init 6
