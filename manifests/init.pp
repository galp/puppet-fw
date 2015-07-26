class fw {
  class { ['fw::pre', 'fw::post']: }
  
  Firewall {
    before  => Class['fw::post'],
    require => Class['fw::pre'],
  }

}
