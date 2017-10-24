#!/bin/bash

# Enable repo's first
wget https://apt.puppetlabs.com/puppet5-release-xenial.deb
dpkg -i puppet5-release-xenial.deb
apt update -y

# Install puppetserver
apt-get install puppetserver -y

# Modify settings
cp /home/caretaker/pfun/conf/master/etc/default/puppetserver /etc/default/puppetserver

# Enable the server
/opt/puppetlabs/bin/puppet resource service puppetserver ensure=running enable=true

# Clean up
rm puppet5-release-xenial.deb
