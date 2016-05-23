class users {

  user { 'jason':
    ensure   => present,
    home     => '/home/jason',
    shell    => '/bin/bash',
    password => '$1$syoOjm/C$z10QBDS8n9q/bSwdbgCnk0',
    groups   => ['adm','cdrom', 'sudo','dip','plugdev',
                 'lpadmin',],
    }

  file { ['/home/jason/torrents',
          '/home/jason/torrents/new',
          '/home/jason/torrents/notyet',
          '/home/jason/torrents/tmp',
          '/home/jason/torrents/session',
          '/home/jason/torrents/done',]:
    ensure => 'directory',
    }

  file { '/home/video':
    ensure => link,
    target => '/bruces-media/video/',
    }
  file { '/home/music':
    ensure => link,
    target => '/bruces-media/music/',
    }
  file { '/home/pics':
    ensure => link,
    target => '/bruces-media/pics/',
    }
  file { '/home/books':
    ensure => link,
    target => '/bruces-media/books/',
    }
  file { '/home/roms':
    ensure => link,
    target => '/bruces-media/roms/',
    }

  user { 'lennye':
    ensure   => present,
    home     => '/home/lennye',
    shell    => '/bin/bash',
    password => '$1$7CPNUxSn$MJD.FlpeM5SG/x2HTWU061',
    groups   => ['adm','cdrom', 'sudo','dip','plugdev',
                 'lpadmin',],
    }

  user { 'jared':
    ensure   => present,
    home     => '/home/jared',
    shell    => '/bin/bash',
    password => '$1$vx93PcPr$82eo/64swTN7izZvX5mI8.',
    groups   => ['cdrom', 'sudo','dip','plugdev',
                 'lpadmin',],
    }
  }

# to get the passwd for puppet
# openssl passwd -1
