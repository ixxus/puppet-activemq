class activemq::service (
  $enable = $activemq::params::enable,
  $ensure = $activemq::params::ensure,
) inherits activemq::params {

  service { 'activemq':
    ensure     => $ensure,
    name       => 'activemq',
    hasrestart => true,
    hasstatus  => false,
    enable     => $enable,
    require    => Anchor['activemq::package::end'],
  }
}
