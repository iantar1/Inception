
all: build
	@sudo mkdir -p /home/iantar/data/wordpress
	@sudo mkdir -p /home/iantar/data/mariadb
	@sudo docker-compose  -f ./srcs/docker-compose.yml up --detach

build:
	@sudo docker-compose  -f ./srcs/docker-compose.yml build

down:
	@sudo docker-compose  -f ./srcs/docker-compose.yml down
	@sudo rm -rf /home/iantar/data
	@sudo docker volume rm $$(sudo docker volume ls -q)

clean: down
	@sudo docker container prune
	@sudo docker image prune
	@sudo docker image rm $$(sudo docker images -q)
	