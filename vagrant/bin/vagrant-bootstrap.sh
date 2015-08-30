#!/usr/bin/env bash

sudo apt-get update

## install meteor
curl https://install.meteor.com/ | sudo sh
#
# config
sudo mkdir -p /apps/meteor/hello-ug/.meteor/local
sudo mount --bind /apps/meteor/hello-ug/.meteor/local/ /vagrant/.meteor/local/
sudo echo "sudo mount --bind /apps/meteor/hello-ug/.meteor/local/ /vagrant/.meteor/local/" >> /etc/profile

# start meteor
cd /vagrant
echo "bring up meteor as user: $USER"
sudo meteor mongo /vagrant/vagrant/data/initdb.js
nohup sudo meteor > /dev/null 2>&1 &
