# == Class: nifi
#
# == Parameters
#
# == Authors
#
# Trevor Vaughan <tvaughan@onyxpoint.com>
#
class nifi (
) inherits ::nifi::params {

  contain '::nifi::users'
  contain '::nifi::install'
  contain '::nifi::config'
  contain '::nifi::service'

  Class['nifi::users'] -> Class['nifi::install']
  Class['nifi::install'] ~> Class['nifi::config']
  Class['nifi::config'] ~> Class['nifi::service']
}
