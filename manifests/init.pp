class fw {
  Firewall {
    before  => Class['fw::post'],
    require => Class['fw::pre'],
  }
}
