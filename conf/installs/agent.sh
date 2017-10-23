#!/bin/bash

# Enable repo's first
wget https://apt.puppetlabs.com/puppet5-release-xenial.deb
dpkg -i puppet5-release-xenial.deb
apt update -y

# Install puppetserver
apt-get install puppet-agent -y

# Enable the agent
/opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true

# Run a quick test
/opt/puppetlabs/bin/puppet agent --test

echo "Check on the master for the certificate request"
