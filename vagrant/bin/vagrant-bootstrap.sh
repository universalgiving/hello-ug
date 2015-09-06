#!/usr/bin/env bash

sudo apt-get update

## install meteor
curl https://install.meteor.com/ | sudo sh
#
# config
sudo mkdir -p /apps/meteor/hello-ug/.meteor/local
sudo mount --bind /apps/meteor/hello-ug/.meteor/local/ /vagrant/.meteor/local/
sudo echo "sudo mount --bind /apps/meteor/hello-ug/.meteor/local/ /vagrant/.meteor/local/" >> ~/.profile

# start meteor
cd /vagrant
echo "bring up meteor as user: $USER"
nohup sudo meteor > /dev/null 2>&1 &
