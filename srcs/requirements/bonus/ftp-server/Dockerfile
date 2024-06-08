FROM debian:bookworm
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install vsftpd -y
COPY ./conf/vsftpd.conf /etc/
CMD  vsftpd