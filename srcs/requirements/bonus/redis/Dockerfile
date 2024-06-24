FROM debian:bookworm
RUN apt-get update -y && apt-get install redis-server -y
RUN apt-get install php-redis -y
# EXPOSE 6379
CMD redis-server --protected-mode no