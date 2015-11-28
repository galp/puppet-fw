class fw {
  class { ['fw::pre', 'fw::post']: require => Packages[$packages] }

  $packages = ['iptables-persistent']
  package { $packages: ensure => installed }
  
  Firewall {
    before  => Class['fw::post'],
    require => Class['fw::pre'],
  }

}
