class packages {
include apt

# basics
package { 'build-essential': }
package { 'bzip2': }
package { 'checkinstall': }
package { 'conky': }
package { 'curl': }
package { 'evolution': }
package { 'fdupes': }
package { 'git': }
package { 'glipper': }
package { 'nmap': }
package { 'pdftk': }
package { 'perl': }
package { 'python': }
package { 'python-virtualenv': }
package { 'rsync': }
package { 'tofrodos': }
package { 'ubuntu-restricted-extras': }
package { 'vim': }
package { 'xclip': }
package { 'zip': }

# password mgmt
package { 'password-gorilla': }


# virtualization
package { 'virtualbox-nonfree': }

# networking
package { 'xchat': }
package { 'etherape': }

# graphics
package { 'inkscape': }

# music
package { 'picard': }

# games
package { 'pysolfc': }
package { 'gweled': }
package { 'anagramarama': }

# android
package { 'android-tools-adb': }
package { 'android-tools-fastboot': }

# timekpr to limit computer time
#apt::ppa { 'ppa:mjasnik/ppa':
#  }
#apt::key { 'ppa:mjasnik/ppa':
#  id   =>  '47FA1307',
#  }
#package { 'timekpr':
#  ensure  =>  latest,
#  require =>  [
#    Apt::Ppa['ppa:mjasnik/ppa'],
#    Apt::Key['ppa:mjasnik/ppa'],
#    ],
#  }


# wine windows emulator
#apt::ppa { 'ppa:ubuntu-wine/ppa': }
#package { 'wine': }

# browsers
package { 'firefox': }

# peerguardian and torrent
apt::ppa { 'ppa:jre-phoenix/ppa':
  options => '-y',
  }
apt::key { 'ppa:jre-phoenix/ppa':
  id   =>  'C0145138',
  }
package { ['pgld','pglcmd','pglgui']:
  ensure  =>  latest,
  require =>  [
    Apt::Ppa['ppa:jre-phoenix/ppa'],
    Apt::Key['ppa:jre-phoenix/ppa'],
    ],
  }


package { 'rtorrent': }

# dropbox
package { 'dropbox': }

# samba
package { 'samba': }
file { '/etc/samba/smb.conf':
  ensure  => present,
  source  => 'puppet:///modules/packages/smb.conf',
  require => Package['samba'],
  }
service { 'samba':
  ensure => running,
  subscribe => File['/etc/samba/smb.conf'],
  }

}
