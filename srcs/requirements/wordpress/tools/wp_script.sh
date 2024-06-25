#!bin/bash

# wp config create	--allow-root \
# --dbname=wordpress \
# --dbuser=iantar \
# --dbpass=1234 \
# --dbhost=mariadb:3306 --path='/var/www/wordpress'
sleep 6

sed -i "s/_db_pass/$DB_PASSWORD/" $WP_PATH/wp-config.php
sed -i "s/name_db/$DB_NAME/" $WP_PATH/wp-config.php
sed -i "s/user_db/$USER/" $WP_PATH/wp-config.php
sed -i "s/host_db/$HOST_DB/" $WP_PATH/wp-config.php

wp core install --allow-root \
	--title=$WP_TITLE \
	--admin_user=$USER \
	--admin_password=$DB_PASSWORD \
	--admin_email=$WP_EMAIL \
	--url=$WP_URL \
	--path=$WP_PATH

wp user create --allow-root --path=$WP_PATH $NORMAL_USER  $NORMAL_USER_EMAIL --user_pass=$NORMAL_USER_PASS

wp plugin install redis-cache --activate --allow-root --path=$WP_PATH

wp redis enable --allow-root --path=$WP_PATH



sleep 1

php-fpm8.2 -F
