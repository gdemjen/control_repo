node default {
}
node 'master1.puppet.vm' {
  include role::master_server
}
