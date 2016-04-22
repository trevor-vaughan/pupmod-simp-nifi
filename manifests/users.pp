class nifi::users (
  $user = 'nifi',
  $uid  = '967',
  $gid  = '967',
  $home = '/opt/nifi'
){

  validate_string($user)
  validate_integer($uid)
  validate_integer($gid)

  user { $user:
    ensure => 'present',
    uid    => $uid,
    gid    => $gid,
    home   => $home
  }

  group { $user:
    ensure => 'present',
    gid    => $gid
  }
}
