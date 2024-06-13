#!bin/bash

# wp config create	--allow-root \
# --dbname=wordpress \
# --dbuser=iantar \
# --dbpass=1234 \
# --dbhost=mariadb:3306 --path='/var/www/wordpress'
sleep 6

sed -i "s/_db_pass/$DB_PASSWORD/" $WP_PATH/wp-config.php

wp core install --allow-root \
	--title=$WP_TITLE \
	--admin_user=$USER \
	--admin_password=$DB_PASSWORD \
	--admin_email=$WP_EMAIL \
	--url=$WP_URL \
	--path=$WP_PATH

wp plugin install redis-cache --activate --allow-root --path=$WP_PATH

wp redis enable --allow-root --path=$WP_PATH



sleep 1

php-fpm8.2 -F
