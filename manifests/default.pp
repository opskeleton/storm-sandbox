
group{ 'puppet': ensure  => present }

class {'storm': }

storm::enable{'nimbus':}
