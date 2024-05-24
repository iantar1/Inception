FROM debian:bookworm
RUN apt-get update && apt-get upgrade && apt-get install -y nginx && apt-get install -y systemctl
EXPOSE 443
RUN mkdir -p /var/run/nginx
RUN mkdir -p /var/www/html
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt \
-keyout /etc/nginx/ssl/inception.key -subj \
"/C=MR/ST=LHZ/L=Marrakesh/O=1337/OU=1337/CN=iantar.1337.ma/UID=iantar"
# comment : /C=Country/ST=State/L=City/O=Organization/OU=OrganizationalUnit/CN=CommonNam
# RUN apt-get install php8.2 php8.2-fpm -y 
COPY conf/mynginx.conf /etc/nginx/conf.d/
# COPY tools/file.php /var/www/html/file.php
# RUN chmod 0777 /var/www/html/file.php
# RUN echo "127.0.0.1 iantar.42.fr" | tee -a /etc/hosts
# COPY conf/hosts /etc/hosts
# RUN echo "iantar" > /etc/hosts
# RUN echo "127.0.0.1       iantar.42.fr" >> /etc/hosts
# ENV  DOCKER_HOSTNAME=${DOCKER_HOSTNAME:-iantar.42.fr}
# COPY  script.sh .
# CMD ./script.sh
# RUN chmod 755 /var/www/html
# RUN chown -R www-data:www-data /var/www/html
# CMD cat /etc/nginx/nginx.conf
# CMD nginx -g "daemon off;" && php-fpm
CMD [ "nginx", "-g", "daemon off;" ]
# CMD [ "systemctl", "restart", "nginx"]
