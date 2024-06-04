FROM debian:bookworm

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install mariadb-server -y

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./maria_script.sh .

RUN chmod +x maria_script.sh

CMD [ "./maria_script.sh" ]