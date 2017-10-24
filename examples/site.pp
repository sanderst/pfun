node 'puppetagent.domain' {
  file {'/tmp/example-ip':                                            # resource type file and filename
    ensure  => present,                                               # make sure it exists
    mode    => '0644',                                                  # file permissions
    content => "Here is my Public IP Address: ${ipaddress_enp0s8}.\n",  # note the ipaddress_eth0 fact
  }
}

node 'puppetmaster.domain' {
  file {'/tmp/example-ip':                                            
    ensure  => present,                                               
    mode    => '0644',                                                  
    content => "Here is my IP Address: ${ipaddress_enp0s8}.\n",  
  }

  java_ks { 'activeq_ca:truststore':
    ensure  		=> latest,
    certificate 	=> '/etc/puppetlabs/puppet/ssl/certs/ca.pem',
    target 		=> '/home/caretaker/truststore.jsk',
    password 		=> 'puppet',
    trustcacerts 	=> true,
  }

  java_ks { 'activemq_cert:keystore':
    ensure 		=> latest,
    certificate		=> '/home/caretaker/activemq_cert.pem',
    private_key		=> '/home/caretaker/activemq_private.pem',
    target		=> '/home/caretaker/keystore.jks',
    password		=> 'puppet',
  }

}
