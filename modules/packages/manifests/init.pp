class packages {
include apt

apt::ppa { 'ppa:jre-phoenix/ppa': }
package { ['pgld','pglcmd','pglgui']:
  ensure => present
  }
}
