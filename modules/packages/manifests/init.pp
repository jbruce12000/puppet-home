class packages {
include apt

# basics
package { 'vim': }
package { 'ubuntu-restricted-extras': }
package { 'tofrodos': }
package { 'checkinstall': }
package { 'build-essential': }
package { 'fdupes': }
package { 'xclip': }
package { 'glipper': }

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
apt::ppa { 'ppa:mjasnik/ppa': }
package { 'timekpr': }

# browsers
package { 'firefox': }

# peerguardian and torrent
apt::ppa { 'ppa:jre-phoenix/ppa': }
package { ['pgld','pglcmd','pglgui']:
  ensure => present
  }
package { 'rtorrent': }

# dropbox
package { 'dropbox': }
# samba, todo config
package { 'samba': }

}
