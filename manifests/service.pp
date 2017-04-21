class activemq::service (
) inherits activemq::params {

  service { 'activemq':
    ensure     => $activemq::params::ensure,
    name       => 'activemq',
    hasrestart => true,
    hasstatus  => false,
    enable     => $activemq::params::enable,
    require    => Anchor['activemq::package::end'],
  }
}
