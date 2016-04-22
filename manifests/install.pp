class nifi::install {
  package { 'nifi':
    ensure   => 'latest',
    provider => 'rpm',
    source   => '/etc/puppet/modules/nifi/files/nifi-0.6-0.6.1-0.noarch.rpm'
  }
}
