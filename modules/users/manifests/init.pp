class users {
  user { 'jason':
    ensure => present,
    home   => '/home/jason',
    shell  => '/bin/bash',
    password => '$1$syoOjm/C$z10QBDS8n9q/bSwdbgCnk0',
    groups => ['adm','cdrom','sudo','dip','plugdev','lpadmin','sambashare','vboxusers'],
    }
  } 

# to get the passwd for puppet
# openssl passwd -1 
