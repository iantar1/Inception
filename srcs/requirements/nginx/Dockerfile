FROM alpine:3.15
RUN apk update && apk add nginx openssl
RUN mkdir -p /etc/nginx/ssl
RUN mkdir -p /var/run/nginx
RUN mkdir -p /var/www/html
# RUN touch /var/www/html/index.html && echo "azul flawn" > /var/www/html/index.html
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt \
    -keyout /etc/nginx/ssl/inception.key -subj \
    "/C=FR/ST=IDF/L=Marrakesh/O=1337/OU=1337/CN=iantar.1337.ma/UID=iantar"
COPY conf/nginx.conf /etc/nginx/nginx.conf
# RUN chmod 755 /var/www/html
# RUN chown -R www-data:www-data /var/www/html
# CMD cat /etc/nginx/nginx.conf
CMD [ "nginx", "-g", "daemon off;" ]
