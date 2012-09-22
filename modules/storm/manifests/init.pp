# Class: stormj
#
# This module manages storm
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class storm {

  Package {
    require  => Exec['apt-get_update']
  }

  exec { 'apt-get_update':
    command     => '/usr/bin/apt-get update',
  }

  package{['unzip','openjdk-6-jdk']: ensure => present  }

  package{ 'zeromq':
    ensure   => installed,
    provider => dpkg,
    source   => '/vagrant/fpm-recipes/zeromq/pkg/zeromq_2.1.7+fpm0_amd64.deb',
  }

  package{ 'jzmq':
    ensure   => installed,
    provider => dpkg,
    source   => '/vagrant/fpm-recipes/jzmq/pkg/jzmq_1.0.0+fpm0_amd64.deb',
    require  => Package['zeromq']
  }

  package { 'storm':
    ensure   => installed,
    provider => dpkg,
    source   => '/vagrant/fpm-recipes/storm/pkg/storm_0.8.1+fpm0_all.deb',
    require  => Package['openjdk-6-jdk','zeromq','jzmq','unzip']
  }

  file{'/opt/storm/conf/storm.yaml':
    ensure => file,
    source => 'puppet:///modules/storm/storm.yaml',
    owner  => storm,
    group  => storm,
  }

}
