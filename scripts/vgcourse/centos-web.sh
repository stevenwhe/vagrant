#!/bin/bash

# Apache httpd
yum install -y httpd httpd-devel httpd-tools
systemctl enable httpd
systemctl start httpd

rm -rf /var/www/html
mkdir /var/www/html

# PHP
yum install php php-cli php-common php-devel php-mysql

# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/stevenwhe/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/stevenwhe/vagrant/master/files/info.php

systemctl restart httpd
