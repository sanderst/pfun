#!/bin/bash

mkdir /home/caretaker/sandbox

cp /etc/puppetlabs/puppet/ssl/certs/ca.pem /home/caretaker/sandbox/ca.pem
cp /etc/puppetlabs/puppet/ssl/certs/puppetmaster.pbcorp.photobucket.com.pem /home/caretaker/sandbox/amq_cert.pem
cp /etc/puppetlabs/puppet/ssl/private_keys/puppetmaster.pbcorp.photobucket.com.pem /home/caretaker/sandbox/amq_private.pem

/opt/puppetlabs/bin/puppet cert generate mcollective-servers

cp /etc/puppetlabs/puppet/ssl/certs/mcollective-servers.pem /home/caretaker/sandbox/shared_cert.pem
cp /etc/puppetlabs/puppet/ssl/private_keys/mcollective-servers.pem /home/caretaker/sandbox/shared_private.pem
cp /etc/puppetlabs/puppet/ssl/certs/puppetmaster.pbcorp.photobucket.com.pem /home/caretaker/sandbox/admin_cert.pem
cp /etc/puppetlabs/puppet/ssl/private_keys/puppetmaster.pbcorp.photobucket.com.pem /home/caretaker/sandbox/admin_private.pem

ssh 10.1.5.21 'mkdir /home/caretaker/sandbox'
scp /home/caretaker/sandbox/* caretaker@10.1.5.21:~/sandbox/
