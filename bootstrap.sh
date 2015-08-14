#!/bin/bash
set -e
set -x

## Install Git and Puppet
apt-get update
apt-get -y install git-core puppet

# Clone the 'puppet' repo
cd /etc
mv -f puppet/ puppet-bak
git clone http://github.com/jbruce12000/puppet-home.git /etc/puppet

# Run Puppet initially to set up the auto-deploy mechanism
puppet apply /etc/puppet/manifests/site.pp

