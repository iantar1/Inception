
all: build
	@sudo mkdir -p /home/iantar/data/wordpress
	@sudo mkdir -p /home/iantar/data/mariadb
	@sudo docker-compose  -f ./srcs/docker-compose.yml up --detach

build:
	@sudo docker-compose  -f ./srcs/docker-compose.yml build

down:
	@sudo docker-compose  -f ./srcs/docker-compose.yml down

clean: down
	@sudo rm -rf /home/iantar/data
	@sudo docker volume rm $$(sudo docker volume ls -q)
	@sudo docker container prune
	@sudo docker image prune

fclean: clean
	@sudo docker image rm $$(sudo docker images -q)


