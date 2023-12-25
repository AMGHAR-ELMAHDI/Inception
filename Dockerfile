FROM    debian:oldstable

COPY    . ./app

WORKDIR /app/Webserv/

RUN    apt-get update -y && apt-get install -y vim build-essential cmake libboost-all-dev libc6-dev clang

ENV     CC=/usr/bin/clang
ENV     CXX=/usr/bin/clang++

EXPOSE 1212

# RUN     make && ./Webserv
ENTRYPOINT    ["tail", "-f", "/dev/null"]
