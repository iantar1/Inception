FROM debian:bookworm

RUN apt-get update && apt-get upgrade && apt-get install -y nginx && apt-get install -y systemctl

EXPOSE 443

COPY nginx.conf /etc/nginx/conf.d/

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt \
	-keyout /etc/nginx/ssl/inception.key -subj \
	"/C=MR/ST=LHZ/L=Marrakesh/O=1337/OU=1337/CN=iantar.1337.ma/UID=iantar"

CMD [ "nginx", "-g", "daemon off;" ]