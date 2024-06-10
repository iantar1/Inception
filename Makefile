
all: build
	sudo mkdir -p /home/iantar/data/wordpress
	sudo mkdir -p /home/iantar/data/mariadb
	sudo docker-compose  -f ./srcs/docker-compose.yml up

build:
	sudo docker-compose  -f ./srcs/docker-compose.yml build

down:
	sudo docker-compose  -f ./srcs/docker-compose.yml down
	sudo rm -rf /home/iantar/data