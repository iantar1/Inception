FROM debian:bookworm

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install unzip wget php8.2-mysql php8.2 php8.2-fpm mariadb-client -y

RUN wget https://wordpress.org/latest.zip -P /var/www/

RUN cd /var/www && unzip latest.zip && rm latest.zip

COPY wp-config.php /var/www/html/

COPY www.conf /etc/php/8.2/fpm/pool.d/www.conf

# WORKDIR /var/www/html
# EXPOSE 9000
CMD [ "php-fpm8.2", "-F" ]