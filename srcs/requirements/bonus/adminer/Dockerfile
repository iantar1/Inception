FROM debian:bookworm
RUN apt-get update -y && apt-get install adminer -y
EXPOSE 8888
CMD ["apache2ctl", "-D", "FOREGROUND"]