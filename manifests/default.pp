
group{ 'puppet': ensure  => present }

node 'nimbus'{
  include storm::nimbus
}

node 'supervisor-a'{
  include storm::supervisor
}

node 'supervisor-b'{
  include storm::supervisor
}
