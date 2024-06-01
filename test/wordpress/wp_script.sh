#!bin/bash

# wp config create	--allow-root \
# --dbname=wordpress \
# --dbuser=iantar \
# --dbpass=1234 \
# --dbhost=mariadb:3306 --path='/var/www/wordpress'
sleep 5

wp core install --allow-root \
	--title="Azul-flown" \
	--admin_user=iantar \
	--admin_password=1234 \
	--admin_email=antartalha@gmail.com \
	--url=localhost \
	--path='/var/www/wordpress'

sleep 2

php-fpm8.2 -F
