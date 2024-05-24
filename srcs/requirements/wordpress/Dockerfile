FROM debian:bookworm
RUN apt-get update -y && apt-get upgrade -y
# RUN apt-get install -y vim unzip wget php8.2 php8.2-fpm php8.2-mysql mariadb-client systemd
# RUN wget https://wordpress.org/latest.zip -P /var/www/
# RUN cd /var/www && unzip latest.zip && rm latest.zip
# COPY conf/wp-config-sample.php /var/www/html/wp-config-sample.php
# RUN mkdir -p /run/php/
RUN apt-get install php8.2 php8.2-fpm -y

# RUN mkdir -p /var/www/html
# COPY tools/file.php /var/www/html/file.php
# RUN chmod 0777 /var/www/html/file.php
COPY conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf
EXPOSE 9000
# CMD systemctl start php-fpm
# RUN php-fpm8.2
CMD [ "php-fpm8.2", "-F" ]
# CMD ["php-fpm8.2", "--nodaemonize"]
# COPY tools/s.sh .
# RUN chmod +x s.sh
# CMD ["./s.sh"]

# CMD service  php7.3-fpm status
# RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

# RUN sed -i 's%listen = /run/php/php7.4-fpm.sock%listen = 0.0.0.0:9000%' /etc/php/7.3/fpm/pool.d/www.conf










# you can use the .env to save the www.conf path
# change PHP-FPM to listen on all available network interfaces (0.0.0.0) on port 9000 instead of using a Unix socket file
