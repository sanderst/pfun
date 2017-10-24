#!/bin/bash

mkdir /etc/puppetlabs/mcollective/ssl

cp /home/caretaker/sandbox/shared_cert.pem /etc/puppetlabs/mcollective/ssl/server_public.pem
cp /home/caretaker/sandbox/shared_private.pem /etc/puppetlabs/mcollective/ssl/server_private.pem

mkdir /etc/puppetlabs/mcollective/clients
cp /home/caretaker/sandbox/admin_cert.pem /etc/puppetlabs/mcollective/ssl/clients/admin_cert.pem
