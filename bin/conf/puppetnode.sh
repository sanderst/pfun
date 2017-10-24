#!/bin/bash

# Basic configuration
cp /home/caretaker/pfun/conf/agent/etc/hosts /etc/hosts
cp /home/caretaker/pfun/conf/agent/etc/hostname /etc/hostname
cp /home/caretaker/pfun/conf/agent/etc/network/interfaces /etc/network/interfaces

# Enable repo's first
# wget https://apt.puppetlabs.com/puppet5-release-xenial.deb
# dpkg -i puppet5-release-xenial.deb
# rm puppet5-release-xenial.deb

# Version 4.x
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
dpkg -i puppetlabs-release-pc1-xenial.deb
rm puppetlabs-release-pc1-xenial.deb

apt-get update -y

# Install puppetserver
apt-get install puppet-agent -y

# Enable the agent
/opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true

init 6
# Run a quick test
#/opt/puppetlabs/bin/puppet agent --test

echo "Check on the master for the certificate request"
