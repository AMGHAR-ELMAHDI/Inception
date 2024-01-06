FROM    debian:oldstable

EXPOSE  6379

RUN     apt update -y && apt upgrade -y && apt install -y redis

RUN     sed -i "s|bind 127.0.0.1 ::1|#bind 127.0.0.1 ::1|g" /etc/redis/redis.conf 
RUN     sed -i "s|maxmemory <bytes>|maxmemory 100mb|g" /etc/redis/redis.conf 
RUN     sed -i "s|# maxmemory-policy noeviction|maxmemory-policy allkeys-lru|g" /etc/redis/redis.conf
RUN     chmod -R 755 /etc/redis/*

CMD     ["redis-server", "--protected-mode no"]

# # RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
