sudo apt-get update && sudo apt-get upgrade

sudo apt-get install -y apache2
sudo a2enmod rewrite	
sudo a2enmod rewrite actions ssl
sudo a2dissite 000-default.conf
sudo chmod 777 /var/www/
sudo systemctl restart apache2

debconf-set-selections <<< 'mysql-server mysql-server/root_password password @phpvagrantbox'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password @phpvagrantbox'

apt-get update
apt-get install -y mysql-server

sudo apt-get install -y curl

sudo apt-get install -y libapache2-mod-php7.0 php7.0-mysql php7.0-curl php7.0-json php-memcached php7.0-dev php7.0-mcrypt php7.0-sqlite3 php7.0-mbstring
sudo phpenmod mcrypt

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer