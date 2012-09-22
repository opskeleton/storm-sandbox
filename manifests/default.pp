
group{ 'puppet': ensure  => present }

node 'nimbus'{
  include storm::nimbus
}

node 'worker'{
  include storm::supervisor
}
