
group{ 'puppet': ensure  => present }

node 'nimbus'{
  include storm::nimbus
}

node 'worker'{
  class{'storm':}
  include storm::worker
}
