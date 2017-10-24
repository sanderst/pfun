#!/bin/bash

mkdir /home/caretaker/.mcollective.d
mkdir -p ~/.mcollective.d/credentials/certs
mkdir -p ~/.mcollective.d/credentials/private_keys

sudo puppet cert generate mcollective-servers

# Version 5.x
#cp /etc/puppetlabs/puppet/ssl/certs/puppetmaster.pbcorp.photobucket.com.pem /home/caretaker/.mcollective.d/credentials/certs/admin_cert.pem
#cp /etc/puppetlabs/puppet/ssl/private_keys/puppetmaster.pbcorp.photobucket.com.pem /home/caretaker/.mcollective.d/credentials/private_keys/admin_private.pem

#Version 4.x
cp /etc/puppetlabs/puppet/ssl/certs/puppetmaster.domain.pem /home/caretaker/.mcollective.d/credentials/certs/admin_cert.pem
cp /etc/puppetlabs/puppet/ssl/private_keys/puppetmaster.domain.pem /home/caretaker/.mcollective.d/credentials/private_keys/admin_private.pem

cp /etc/puppetlabs/puppet/ssl/certs/mcollective-servers.pem /home/caretaker/.mcollective.d/credentials/certs/mcollective-servers.pem

cp /home/caretaker/pfun/conf/mcollective/client/client.cfg /etc/puppetlabs/mcollective/client.cfg

systemctl stop mcollective
systemctl start mcollective
