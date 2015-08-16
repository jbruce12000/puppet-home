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

  user { 'lennye':
    ensure   => present,
    home     => '/home/lennye',
    shell    => '/bin/bash',
    password => '$1$7CPNUxSn$MJD.FlpeM5SG/x2HTWU061',
    groups   => ['adm','cdrom', 'sudo','dip','plugdev',
                 'lpadmin','sambashare','vboxusers'],
    }

  user { 'jared':
    ensure   => present,
    home     => '/home/jared',
    shell    => '/bin/bash',
    password => '$1$vx93PcPr$82eo/64swTN7izZvX5mI8.',
    groups   => ['cdrom', 'sudo','dip','plugdev',
                 'lpadmin','sambashare','vboxusers'],
    }

  }

# to get the passwd for puppet
# openssl passwd -1


