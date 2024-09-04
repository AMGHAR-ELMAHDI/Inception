
all: 
	docker compose -f ./srcs/docker-compose.yml up -d

fclean: down stop
	docker stop $(docker ps -a -q)
	docker rm $(docker ps -a -q)
	docker rmi $(docker image ls -q)
	