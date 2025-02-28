Télécharger
https://files.etichack.com/Debian_Cli.ova

apt update
apt install -y update

curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg

curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | tee /etc/apt/sources.list.d/caddy-stable.list

apt update

apt install caddy

apt autoremove apache2

systemctl restart caddy

apt install php-fpm php-mysql mariadb-server php-intl php-gd

wget https://files.phpmyadmin.net/phpMyAdmin/5.2.2/phpMyAdmin-5.2.2-all-languages.zip

unzip phpMyAdmin-5.2.2-all-languages.zip

rm -rf /var/www/html

mv phpMyAdmin-5.2.2-all-languages /var/www/phpmyadmin

systemctl enable caddy

wget http://192.168.128.88/test.php
wget http://192.168.128.88/Caddyfile

mv test.php /var/www/
mv Caddyfile /etc/caddy/

systemctl restart caddy

http://IP/test.php

cd

unzip phpMyAdmin-5.2.2-all-languages.zip

mv phpMyAdmin-5.2.2-all-languages /var/www/phpmyadmin

unzip phpMyAdmin-5.2.2-all-languages.zip

mysql_secure_installation


tar xf glpi-10.0.18.tgz
mv glpi /var/www/

chmod 755 -R /var/www/glpi && chown www-data:www-data -R /var/www/glpi
apt install php-dom php-simplexml php-xmlreader php-xmlwriter php-curl

cd /var/www/glpi

php bin/console db:install -H localhost -d glpi -u root -p 123456
