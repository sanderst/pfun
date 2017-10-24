#!/bin/bash

apt-get install default-jdk -y

wget http://www.trieuvan.com/apache/activemq/5.14.5/apache-activemq-5.14.5-bin.tar.gz

tar zxf apache-activemq-5.14.5-bin.tar.gz -C /opt/

java -version

rm apache-activemq-5.14.5-bin.tar.gz

