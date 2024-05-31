FROM debian:bookworm

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install mariadb-server -y

COPY ./maria_script.sh .

RUN chmod +x maria_script.sh

CMD [ "./maria_script.sh" ]