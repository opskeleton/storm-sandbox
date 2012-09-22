# Configures zookeeper for storm worker machines
class storm::zookeeper {
  package{'zookeeper':
    ensure  => present
  }

  file{'/etc/init/zookeeper.conf':
    ensure => file,
    source => 'puppet:///modules/storm/zookeeper.conf',
    owner  => root,
    group  => root,
  }

  # see http://tinyurl.com/d6cn393
  file { '/etc/init.d/zookeeper':
    ensure  => link,
    target  => '/lib/init/upstart-job',
    require => File['/etc/init/zookeeper.conf']
  }

  service{'zookeeper':
    ensure    => running,
    provider  => upstart,
    require   => [File['/etc/init.d/zookeeper'], Package['zookeeper']]
  }
}
