# Enables a storm component upstart job
define storm::enable() {
  editfile::config { "enable ${name} service":
    ensure  => 'yes',       # the value shall be 'no'
    path    => "/etc/default/storm-${name}",
    entry   => 'ENABLE',
    quote   => true,
    require => Package['storm']
  }
}
