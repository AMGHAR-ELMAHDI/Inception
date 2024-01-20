
create:
	sudo mkdir -p /home/eamghar/data/wp
	sudo mkdir -p /home/eamghar/data/db
	sudo chmod 777 /home/eamghar/data/wp
	sudo chmod 777 /home/eamghar/data/db

all: create
	sudo docker-compose -f ./srcs/docker-compose.yml up -d

fclean: down stop
	sudo docker stop $(docker ps -a -q)
	sudo docker rm $(docker ps -a -q)
	sudo docker rmi $(docker image ls -q)
	sudo rm -rf /home/eamghar/data/*
	