node default {
  file { '/root/README':
    ensure => file,
    content => 'Readme file ...',
    owner => 'root',
  }
}
node 'master1.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => $fqdn,
  }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
