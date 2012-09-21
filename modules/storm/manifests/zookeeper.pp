# Configures zookeeper for storm worker machines
class storm::zookeeper {
  package{'zookeeper':
    ensure  => present
  }

  file{'/etc/init/zookeeper.conf':
    ensure => file,
    # mode   => 0644,
    source => 'puppet:///modules/storm/zookeeper.conf',
    owner  => root,
    group  => root,
  }
}
