FROM debian:bookworm

RUN apt update -y && apt upgrade -y

RUN apt install wget -y

RUN wget https://github.com/google/cadvisor/releases/download/v0.39.3/cadvisor

RUN chmod +x cadvisor

EXPOSE 8080

CMD ./cadvisor
