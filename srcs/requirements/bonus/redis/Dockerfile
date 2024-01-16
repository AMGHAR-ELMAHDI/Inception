FROM    debian:oldstable

RUN     apt update -y && apt upgrade -y && apt install -y redis

# Allows Redis to accept connections from other IP addresses.
RUN     sed -i "s|bind 127.0.0.1 ::1|#bind 127.0.0.1 ::1|g" /etc/redis/redis.conf

# Sets the maximum memory limit for Redis to 100 megabytes
RUN     sed -i "s|maxmemory <bytes>|maxmemory 100mb|g" /etc/redis/redis.conf 

# Modifies the Redis configuration to set the eviction policy to "allkeys-lru"
# when the maximum memory limit is reached. This policy evicts the least recently used keys to make space for new data
RUN     sed -i "s|# maxmemory-policy noeviction|maxmemory-policy allkeys-lru|g" /etc/redis/redis.conf


RUN     chmod -R 755 /etc/redis/*

CMD     ["redis-server", "--protected-mode no"]

