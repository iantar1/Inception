
all: build
	sudo docker-compose  -f ./srcs/docker-compose.yml up

build:
	sudo docker-compose  -f ./srcs/docker-compose.yml build

down:
	sudo docker-compose  -f ./srcs/docker-compose.yml down

