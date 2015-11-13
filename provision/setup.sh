#!/bin/bash

echo "Provisioning virtual machine..."

echo "Installing Git"
apt-get install git -y > /dev/null

echo "Installing apache"
apt-get install apache2 -y > /dev/null

echo "Installing php"
apt-get install php5 libapache2-mod-php5 -y > /dev/null

echo "Installing php modules"
apt-get install php5-mysql php5-curl php5-gd php5-idn php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-xdebug -y > /dev/null

echo "BackUp xdebug.ini file"
if [ ! -f /etc/php5/conf.d/xdebug.ini.back ]; then
    cp /etc/php5/conf.d/xdebug.ini /etc/php5/conf.d/xdebug.ini.back
fi

echo "BackUp hosts file"
if [ ! -f /etc/hosts.back ]; then
    cp /etc/hosts /etc/hosts.back
fi

chown -R vagrant:www-data /var/www
chmod -R 755 /var/www

echo "<?php phpinfo(); ?>" > /var/www/info.php

service apache2 restart > /dev/null 2> /dev/null

echo "Install VHosts"
rm /etc/apache2/sites-enabled/*
cp /etc/apache2/vhosts/* /etc/apache2/sites-enabled/.
service apache2 restart > /dev/null 2> /dev/null
