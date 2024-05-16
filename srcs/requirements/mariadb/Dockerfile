FROM debian:buster
RUN apt update -y && apt upgrade -y && apt install -y vim && apt install -y mariadb-server
# RUN mysql_secure_installation
# RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql
COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./tools/script.sh .
ENV SQL_DATABASE=sqlino
ENV SQL_USER=iantar
ENV SQL_PASSWORD=
ENV SQL_ROOT_PASSWORD=
RUN chmod +x script.sh
CMD sh script.sh 

# RUN apk add openrc
# RUN mkdir -p /var/run/mysqld/
# RUN touch /var/run/mysqld/mysqld.sock
# RUN service mysql start;
# RUN 
# CMD cat /etc/my.cnf
