#!/bin/bash

# Enable repo's first
# Version 5.x
#wget https://apt.puppetlabs.com/puppet5-release-xenial.deb
#dpkg -i puppet5-release-xenial.deb
#rm puppet5-release-xenial.deb

# Version 4.x
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
dpkg -i puppetlabs-release-pc1-xenial.deb
rm puppetlabs-release-pc1-xenial.deb

apt update -y

# Install puppetserver
apt-get install puppetserver -y

# Modify settings
cp /home/caretaker/pfun/conf/master/etc/default/puppetserver /etc/default/puppetserver

# Enable the server
/opt/puppetlabs/bin/puppet resource service puppetserver ensure=running enable=true

# Add path
ln -s /opt/puppetlabs/bin/puppet /usr/bin/
