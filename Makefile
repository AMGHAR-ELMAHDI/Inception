
create:
	sudo mkdir -p /$PWD/srcs/data/wp
	sudo mkdir -p /$PWD/srcs/data/db
	sudo chmod 777 /$PWD/srcs/data/wp
	sudo chmod 777 /$PWD/srcs/data/db

all: create
	sudo docker-compose -f ./srcs/docker-compose.yml up -d

fclean: down stop
	sudo docker stop $(docker ps -a -q)
	sudo docker rm $(docker ps -a -q)
	sudo docker rmi $(docker image ls -q)
	sudo rm -rf /$PWD/srcs/data/*
	