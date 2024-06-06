FROM debian:bookworm

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install unzip wget php8.2-mysql php8.2 php8.2-fpm mariadb-client -y

RUN wget https://wordpress.org/latest.zip -P /var/www/

RUN cd /var/www && unzip latest.zip && rm latest.zip

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN chown -R www-data:www-data /var/www/


COPY wp-config.php /var/www/wordpress/

COPY www.conf /etc/php/8.2/fpm/pool.d/

# bonus
RUN apt-get install php-redis -y
# WORKDIR /var/www/html
# EXPOSE 9000
# CMD [ "php-fpm8.2", "-F" ]
COPY wp_script.sh .
RUN chmod +x  wp_script.sh
CMD [ "./wp_script.sh" ]
