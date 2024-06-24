FROM debian:bookworm
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install vsftpd -y
COPY ./conf/vsftpd.conf /etc/vsftpd.conf
COPY ./tools/script.sh .

RUN chmod +x  script.sh


RUN apt install ftp -y

RUN touch /etc/vsftpd.chroot_list

CMD ./script.sh
