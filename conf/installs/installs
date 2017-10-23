#!/bin/bash

# get ssh, git
sudo apt-get install ssh git -y

# get puppet repos
wget https://apt.puppetlabs.com/puppet5-release-trusty.deb
sudo dpkg -i puppet5-release-trusty.deb

# update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y  

# install puppet stuffs
# puppetmaster
sudo apt-get install puppet puppet-common puppetmaster puppetmaster-common -y 
# agent
sudo apt-get install puppet-agent -y

# add path
export PATH=/opt/puppetlabs/bin/:$PATH

# start puppet service
sudo /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
