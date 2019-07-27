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
package { 'nmap': }
package { 'perl': }
package { 'python': }
package { 'python-virtualenv': }
package { 'rsync': }
package { 'tofrodos': }
package { 'ubuntu-restricted-extras': }
package { 'vim': }
package { 'xclip': }
package { 'xsane': }
package { 'zip': }

# password mgmt
package { 'password-gorilla': }


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

# browsers
package { 'firefox': }

# torrent
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
