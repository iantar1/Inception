#!bin/bash

# wp config create	--allow-root \
# --dbname=wordpress \
# --dbuser=iantar \
# --dbpass=1234 \
# --dbhost=mariadb:3306 --path='/var/www/wordpress'

sleep 2

php-fpm8.2 -F
