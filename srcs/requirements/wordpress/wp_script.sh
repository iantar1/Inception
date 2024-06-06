#!bin/bash

# wp config create	--allow-root \
# --dbname=wordpress \
# --dbuser=iantar \
# --dbpass=1234 \
# --dbhost=mariadb:3306 --path='/var/www/wordpress'
sleep 6

wp core install --allow-root \
	--title=$WP_TITLE \
	--admin_user=$USER \
	--admin_password=$DB_PASSWORD \
	--admin_email=$WP_EMAIL \
	--url=$WP_URL \
	--path=$WP_PATH

wp plugin install redis-cache --activate --allow-root --path=$WP_PATH
# Install Redis plugin

	# # configure Redis cache
	# # WP_REDIS_CLIENT is a configuration constant used to specify the client
	# # library that WordPress should use to connect to a Redis server for object caching
# wp config set --allow-root --path=$WP_PATH WP_REDIS_CLIENT "phpredis"
# wp config set --allow-root --path=$WP_PATH WP_REDIS_HOST "redis"
# wp config set --allow-root --path=$WP_PATH WP_REDIS_PORT "6379"
# wp config set --allow-root --path=$WP_PATH WP_REDIS_PREFIX "wp_"

# wp plugin update --all --allow-root --path=$WP_PATH
wp redis enable --allow-root --path=$WP_PATH



sleep 1

php-fpm8.2 -F

# root@a0cfcb621e19:/var/www/wordpress# telnet redis 6379
# Trying 192.168.224.2...
# Connected to redis.
# Escape character is '^]'.
# -DENIED Redis is running in protected mode because 
# protected mode is enabled and no password is set 
# for the default user. In this mode connections are 
# only accepted from the loopback interface. If you want 
# to connect from external computers to Redis you may adopt 
# one of the following solutions: 1) Just disable protected mode
#  sending the command 'CONFIG SET protected-mode no' from the loopback
#   interface by connecting to Redis from the same host the server is running,
#    however MAKE SURE Redis is not publicly accessible from internet if you do so.
#     Use CONFIG REWRITE to make this change permanent. 2) Alternatively you can just
# 	 disable the protected mode by editing the Redis configuration file, and setting 
# 	 the protected mode option to 'no', and then restarting the server. 3) If you started
# 	  the server manually just for testing, restart it with the '--protected-mode no' option. 4)
# 	   Setup a an authentication password for the default user. NOTE: You only need to do 
# 	   one of the above things in order for the server to start accepting connections from 
# 	   the outside.
# Connection closed by foreign host.
