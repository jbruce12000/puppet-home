class packages {
include apt

# basics
package { 'build-essential': }
package { 'bzip2': }
package { 'checkinstall': }
package { 'conky': }
package { 'chromium-browser': }
package { 'curl': }
package { 'evolution': }
package { 'fdupes': }
package { 'git': }
package { 'glipper': }
package { 'nmap': }
package { 'pcsxr': }
package { 'pdftk': }
package { 'perl': }
package { 'python': }
package { 'python-virtualenv': }
package { 'rsync': }
package { 'steam-launcher': }
package { 'tofrodos': }
package { 'ubuntu-restricted-extras': }
package { 'vim': }
package { 'xclip': }
package { 'xsane': }
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
package { 'pianobar': }

# games
package { 'pysolfc': }
package { 'gweled': }
package { 'anagramarama': }

# android
package { 'android-tools-adb': }
package { 'android-tools-fastboot': }

# timekpr to limit computer time
apt::ppa { 'ppa:mjasnik/ppa':
  options => '-y',
  }
apt::key { 'ppa:mjasnik/ppa':
  id   =>  '47FA1307',
  }
package { 'timekpr':
  ensure  =>  latest,
  require =>  [
    Apt::Ppa['ppa:mjasnik/ppa'],
    Apt::Key['ppa:mjasnik/ppa'],
    ],
  }

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

# nfs
package { 'nfs-kernel-server': }
file { '/etc/exports':
  ensure  => present,
  source  => 'puppet:///modules/packages/exports',
  require => Package['nfs-kernel-server'],
  }
service { 'nfs-kernel-server':
  ensure => running,
  subscribe => File['/etc/exports'],
  }


}
