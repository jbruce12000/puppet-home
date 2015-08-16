class users {
  user { 'jason':
    ensure   => present,
    home     => '/home/jason',
    shell    => '/bin/bash',
    password => '$1$syoOjm/C$z10QBDS8n9q/bSwdbgCnk0',
    groups   => ['adm','cdrom', 'sudo','dip','plugdev',
                 'lpadmin','sambashare','vboxusers'],
    }

  file { ['/home/jason/torrents',
          '/home/jason/torrents/new',
          '/home/jason/torrents/notyet',
          '/home/jason/torrents/tmp',
          '/home/jason/torrents/session',
          '/home/jason/torrents/done',]:
    ensure => present,
    }
  }

# to get the passwd for puppet
# openssl passwd -1


