FROM    debian:oldstable

WORKDIR /var/www
RUN     rm -rf *

RUN     apt update -y && apt upgrade -y
RUN     apt install -y curl php-fpm php-mysql  php-redis redis

RUN     curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
        && chmod +x wp-cli.phar \
        && mv wp-cli.phar /usr/local/bin/wp

RUN     sed -i "s|listen = /run/php/php7.4-fpm.sock|listen = 9000|g" /etc/php/7.4/fpm/pool.d/www.conf
RUN     mkdir -p /run/php

COPY    ./tools/script.sh .
RUN     chmod +x script.sh

CMD     [ "./script.sh" ]
