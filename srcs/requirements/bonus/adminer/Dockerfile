FROM debian:bookworm
RUN apt-get update -y && apt-get install -y adminer php php-cli
EXPOSE 8888
WORKDIR /usr/share/adminer/
CMD php -S 0.0.0.0:8888 adminer.php

