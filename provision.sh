#!/bin/bash

MONGO_VERSION=3.0.3
export DEBIAN_FRONTEND=noninteractive

echo "upgrading OS packages..."
apt-get update > /dev/null
apt-get -y upgrade > /dev/null

echo "installing some stuff and junk..."
apt-get -y install git emacs build-essential g++ python git python-software-properties  > /dev/null

echo "installing meteor..."
curl https://install.meteor.com/ | sh

# echo "setup meteor"
cd /vagrant
rm -rf .meteor/local
mkdir -p /home/vagrant/.meteorlocal
ln -s /home/vagrant/.meteorlocal /vagrant/.meteor/local
chown vagrant:vagrant /home/vagrant/.meteorlocal
chown vagrant:vagrant /vagrant/.meteor/local
meteor update



