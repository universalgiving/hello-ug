#!/usr/bin/env bash
# install oracle jdk8
# sudo add-apt-repository -y ppa:webupd8team/java
# sudo apt-get update
# echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
# echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
# sudo apt-get -y install oracle-java8-installer
# export JAVA_HOME=/usr/lib/jvm/java-8-oracle
# export JRE_HOME=/usr/lib/jvm/java-8-oracle/jre
# export PATH=$PATH:$JAVA_HOME:$JAVA_HOME/jre/bin:$MYSQL_PATH
# echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> /etc/profile
# echo "export JRE_HOME=/usr/lib/jvm/java-8-oracle/jre" >> /etc/profile
# echo "export PATH=$PATH:$JAVA_HOME:$JAVA_HOME/jre/bin:$MYSQL_PATH" >> /etc/profile
#
# install tools
#sudo apt-get -y install unzip

# install meteor
curl https://install.meteor.com/ | sudo sh

# config
mkdir -p /apps/meteor/hello-ug/.meteor/local
sudo mount --bind /apps/meteor/hello-ug/.meteor/local/ /vagrant/.meteor/local/
echo "sudo mount --bind /apps/meteor/hello-ug/.meteor/local/ /vagrant/.meteor/local/" >> /etc/profile

# start meteor
cd /vagrant
nohup meteor > /dev/null 2>&1 &
