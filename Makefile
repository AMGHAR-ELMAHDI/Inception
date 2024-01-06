NAME = inception

all:
	docker-compose -f ./srcs/docker-compose.yml up -d

build:
	docker-compose -f ./srcs/docker-compose.yml up -d --build

start:
	docker-compose -f ./srcs/docker-compose.yml start

down:
	docker-compose -f ./srcs/docker-compose.yml down

stop:
	docker-compose -f ./srcs/docker-compose.yml stop

re: stop start

clean:
	docker stop $(docker ps -a -q)
	docker rm $(docker ps -a -q)
	docker rmi $(docker image ls -q)
	docker volume rm $(docker volume ls -q)
	rm -rf /Users/eamghar/mysql/*
	rm -rf /Users/eamghar/wordpress/*
	docker network prune --force
	docker system prune --all --force --volumes
