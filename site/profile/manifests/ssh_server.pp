class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@master1.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => ssh-rsa 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCjeUPzzTJ2LMN7eB4L4nX01YHDcKkeo/KzAFUtI/+EoTjT9yvVe58tJMh2zaGpWAYECyeYGyl3qTKtTxc5YfD5/Dj/2ErGs9C6KMmpkPN6twCJttppaD5FhRUd1q9XXU5yMytAbP8fyToLvaMwMeUOzRAUm0m90dLIuWePAyDtJR+8FGg2EAR4VNxq8zhe6veV2I/hNtxCltvO1G4gUjgRPET7dVxNEqh5d8yQ9FK29uAZdqE230bNHZsVi3OEIsT+CWb+RGM0vpD914WczXtlUJc2ha4sXeiZq4H5G0PC9RHiXNm+ug923wCYWr+O30ReunD6CGFgXRmmZsjDcKqX root@master1.puppet.vm',
  }
}
