#!/bin/bash

# MYSQL
yum install mysql mysql-server mysql-devel

wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm

rpm -ivh mysql-community-release-el7-5.noarch.rpm

yum update

systemctl enable mysqld
systemctl start mysqld

mysql -u root -e "SHOW DATABASES";
