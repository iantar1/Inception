# FROM debian:buster
# RUN apt update -y && apt upgrade -y
# RUN apt-get  install -y wget && apt install -y vim
# RUN apt-get install -y php7.3 php-fpm php-mysql mariadb-client
# RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
# RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
# RUN	chown -R root:root /var/www/wordpress
# # RUN apt install -y systemd
# COPY  conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
# RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# RUN chmod +x wp-cli.phar
# RUN mv wp-cli.phar /usr/local/bin/wp
# # COPY tools/script.sh /
# # RUN chmod +x script.sh
# EXPOSE 9000
# CMD wp config create	--allow-root \
# --dbname=$SQL_DATABASE \
# --dbuser=$SQL_USER \
# --dbpass=$SQL_PASSWORD \
# --dbhost=mariadb:3306 --path='/var/www/wordpress'

FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y vim unzip wget php7.4 php7.4-fpm php7.4-mysql mariadb-client

RUN apt-get install -y php-redis

RUN wget https://wordpress.org/latest.zip -P /var/www/

RUN cd /var/www && unzip latest.zip && rm latest.zip

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /run/php/

# you can use the .env to save the www.conf path
# change PHP-FPM to listen on all available network interfaces (0.0.0.0) on port 9000 instead of using a Unix socket file
RUN sed -i 's%listen = /run/php/php7.4-fpm.sock%listen = 0.0.0.0:9000%' /etc/php/7.4/fpm/pool.d/www.conf


COPY tools/auto_config.sh /

RUN chmod +x /auto_config.sh

WORKDIR /var/www/wordpress

CMD ["/auto_config.sh"]