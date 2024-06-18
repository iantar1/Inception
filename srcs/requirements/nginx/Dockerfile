FROM debian:bookworm-backports

RUN apt-get update && apt-get upgrade && apt-get install -y nginx && apt-get install -y systemctl

COPY ./conf/nginx.conf /etc/nginx/conf.d/

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt \
	-keyout /etc/nginx/ssl/inception.key -subj \
	"/C=Mr/O=1337FIL/CN=inception"

# "/C=XX/ST=StateName/L=CityName/O=CompanyName/OU=CompanySectionName/CN=CommonNameOrHostname"

CMD [ "nginx", "-g", "daemon off;" ]