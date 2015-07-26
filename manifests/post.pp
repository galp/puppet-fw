class fw::post {
  firewall { '999 drop all':
    proto  => 'all',
    iniface => 'eth0',
    action => 'drop',
    before => undef,
  }
}
