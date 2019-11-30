#!/bin/bash

# Updates and Upgrades
yum update -y --exclude=kernel
# Tools
yum install -y git screen net-tools unzip vim
yum install -y wget
# Apache httpd
yum install -y httpd httpd-devel httpd-tools
systemctl enable httpd
systemctl start httpd

rm -rf /var/www/html
mkdir /var/www/html

# PHP
yum install php php-cli php-common php-devel php-mysql

# MYSQL
yum install mysql mysql-server mysql-devel

wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm

rpm -ivh mysql-community-release-el7-5.noarch.rpm

yum update

systemctl enable mysqld
systemctl start mysqld

mysql -u root -e "SHOW DATABASES";

# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/stevenwhe/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/stevenwhe/vagrant/master/files/info.php

systemctl restart httpd


