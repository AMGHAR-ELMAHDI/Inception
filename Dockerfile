FROM    debian:oldstable

# COPY    . ./app

WORKDIR /app/

RUN    apt-get update -y && apt-get install -y vim 

ENV     CC=/usr/bin/clang
ENV     CXX=/usr/bin/clang++

EXPOSE 1212

# RUN     make && ./Webserv
ENTRYPOINT    ["tail", "-f", "/dev/null"]
