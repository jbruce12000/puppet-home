#!/bin/bash
set -e
set -x

## Install Git and Puppet
# apt-get update
apt-get -y install git-core puppet &
wait

# Clone the 'puppet' repo
cd /etc

if [ -d /etc/puppet ]; then
  if [ -d /etc/puppet-bak ]; then
    rm -rf /etc/puppet-bak
  fi
  mv -f puppet puppet-bak
fi

git clone http://github.com/jbruce12000/puppet-home.git /etc/puppet

# run puppet

puppet --modulepath=/etc/puppet apply /etc/puppet/manifests/site.pp

