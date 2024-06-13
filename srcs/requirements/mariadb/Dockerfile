FROM debian:bookworm

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install mariadb-server -y

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/maria_script.sh .

RUN chmod +x maria_script.sh

CMD [ "./maria_script.sh" ]