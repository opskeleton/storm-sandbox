
group{ 'puppet': ensure  => present }

node 'nimbus'{
  class{'storm':}
  storm::enable{'nimbus':}
}

node 'worker'{
  class{'storm':}
  include storm::worker
}
