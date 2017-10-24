#!/bin/bash

apt-get install default-jdk -y

wget http://www.trieuvan.com/apache/activemq/5.14.5/apache-activemq-5.14.5-bin.tar.gz

tar zxf apache-activemq-5.14.5-bin.tar.gz -C /opt/

java -version

rm apache-activemq-5.14.5-bin.tar.gz

cp /home/caretaker/pfun/conf/activemq/activemq.xml /opt/apache-activemq-5.14.5/conf/activemq.xml

keytool -import -alias "My CA" -file /etc/puppetlabs/puppet/ssl/certs/ca.pem -keystore truststore.jks
cat /etc/puppetlabs/puppet/ssl/certs/puppetmaster.pbcorp.photobucket.com.pem /etc/puppetlabs/puppet/ssl/private_keys/puppetmaster.pbcorp.photobucket.com.pem > temp.pem
openssl pkcs12 -export -in temp.pem -out activemq.p12 -name activemq.example.com
keytool -importkeystore  -destkeystore keystore.jks -srckeystore activemq.p12 -srcstoretype PKCS12 -alias activemq.example.com
cp keystore.jks truststore.jks /opt/apache-activemq-5.14.5/conf/
rm activemq.p12 keystore.jks temp.pem truststore.jks
