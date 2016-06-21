class nifi::service {
  file { '/etc/init.d/nifi':
    source => '/opt/nifi/bin/nifi.sh',
    owner  => 'root',
    group  => 'root',
    mode   => '0755'
  }

  service { 'nifi':
    ensure     => 'running',
    enable     => true,
    hasstatus  => true,
    hasrestart => true
  }

  File['/etc/init.d/nifi'] -> Service['nifi']
}
