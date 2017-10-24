#!/bin/bash

cp /etc/puppetlabs/puppet/ssl/certs/ca.pem .
cp /etc/puppetlabs/puppet/ssl/certs/puppetmaster.pbcorp.photobucket.com.pem amq_cert.pem
cp /etc/puppetlabs/puppet/ssl/private_keys/puppetmaster.pbco
rp.photobucket.com.pem amq_private.pem
/opt/puppetlabs/bin/puppet cert generate mcollective-servers
cp /etc/puppetlabs/puppet/ssl/certs/mcollective-servers.pem shared_cert.pem
cp /etc/puppetlabs/puppet/ssl/private_keys/mcollective-servers.pem shared_private.pem
cp /etc/puppetlabs/puppet/ssl/certs/puppetmaster.pbcorp.photobucket.com.pem admin_cert.pem
cp /etc/puppetlabs/puppet/ssl/private_keys/puppetmaster.pbcorp.photobucket.com.pem admin_private.pem
