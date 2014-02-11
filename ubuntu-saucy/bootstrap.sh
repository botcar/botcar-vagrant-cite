#!/usr/bin/env bash

# Start from latest and greatest
apt-get update

# version control
apt-get install -y git
apt-get install -y subversion

# the one true editor
apt-get install -y emacs

# Get full JDK *now* so we don't pull in
# jre as a dependency and have to
# add jdk later...
apt-get install -y openjdk-7-jdk

# Java servlet container and web server.
# make www server available from shared volume.
apt-get install -y tomcat6
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant/web /var/www

# build system and dependency mgt
apt-get install -y gradle
apt-get install -y maven

# Get fuseki from binaries...
if [ -d "/opt/fuseki" ] ; then
    echo "Already have fuseki directory."
else
    mkdir /opt/fuseki
fi


cd /opt/fuseki
wget http://apache.mirrors.lucidnetworks.net//jena/binaries/jena-fuseki-1.0.1-distribution.tar.gz
tar zxf jena-fuseki-1.0.1-distribution.tar.gz
rm jena-fuseki-1.0.1-distribution.tar.gz
cd

if [ -h "fuseki" ]; then
    echo "Already have symln to fuseki"
else
    ln -s /opt/fuseki/jena-fuseki-1.0.1 $HOME/fuseki
fi

# tools for markdown: beautifuldocs
apt-get install -y nodejs
if [ -h "/usr/bin/node" ]; then
    echo "Already have symln for node"
else
    sudo ln -s /usr/bin/nodejs /usr/bin/node
fi


apt-get install -y npm
npm install beautiful-docs

# tools for markdown: mdpress
apt-get install -y ruby2.0 ruby2.0-dev build-essential libssl-dev zlib1g-dev ruby-switch
ruby-switch --set ruby2.0
gem install mdpress



# trust apt to clean up some space for us:
apt-get -y autoremove

echo "Ran autoremove."

echo "Setting up account directory."
cp "/vagrant/dotprofile" "/home/vagrant/.profile"


