FROM    debian:oldstable

WORKDIR /var/www

ARG     MYSQL_DATABASE MYSQL_USER MYSQL_PASSWORD

ENV     DOMAIN_NAME=eamghar.42.fr
ENV     MYSQL_DATABASE=wordpress
ENV     MYSQL_ROOT_PASSWORD=1337
ENV     MYSQL_USER=eamghar
ENV     MYSQL_PASSWORD=1337

RUN     apt update -y && apt upgrade -y && apt install -y vim curl git zsh wget unzip zip
RUN     apt install -y php php-fpm php-mysqli php-cgi php-mysql php-pdo php-gd php-cli php-mbstring php-redis redis && rm -rf /var/lib/apt/lists/*

RUN     curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
        && chmod +x wp-cli.phar \
        && mv wp-cli.phar /usr/local/bin/wp 

RUN     sed -i "s|listen = /run/php/php7.4-fpm.sock|listen = 9000|g" /etc/php/7.4/fpm/pool.d/www.conf

RUN     mkdir -p /run/php/

COPY    ./tools/script.sh /usr/local/bin/
RUN     chmod +x /usr/local/bin/script.sh

RUN     sh /usr/local/bin/script.sh

WORKDIR /var/www/html
EXPOSE  9000
COPY    ./tools/scr.sh /

CMD     ["bash","/scr.sh"]

# ENTRYPOINT [ "tail", "-f", "/dev/null" ]

# # RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

