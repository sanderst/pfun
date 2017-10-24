#!/bin/bash

cp /home/caretaker/pfun/conf/master/etc/hostname /etc/hostname
cp /home/caretaker/pfun/conf/master/etc/hosts /etc/hosts
cp /home/caretaker/pfun/conf/master/etc/network/interfaces /etc/network/interfaces

apt-get update -y 
apt-get upgrade -y
init 6
