FROM debian:bullseye

RUN apt-get update -y && apt-get install redis-server -y

RUN apt-get install php-redis -y

CMD redis-server --protected-mode no