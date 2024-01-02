FROM    debian:oldstable

WORKDIR /var/www

ARG     MYSQL_DATABASE MYSQL_USER MYSQL_PASSWORD

ENV     DOMAIN_NAME=eamghar.42.fr
ENV     MYSQL_DATABASE=wordpress
ENV     MYSQL_ROOT_PASSWORD=1337
ENV     MYSQL_USER=eamghar
ENV     MYSQL_PASSWORD=1337

RUN     apt update -y && apt upgrade -y
RUN     apt install -y vim curl git zsh wget unzip zip
RUN     apt install -y php\
        php-fpm php-mysqli\
        php-cgi php-mysql \
        php-pdo php-gd    \
        php-cli           \
        php-mbstring      \
        php-redis redis   

RUN     rm -rf /var/lib/apt/lists/*

RUN     curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
        && chmod +x wp-cli.phar \
        && mv wp-cli.phar /usr/local/bin/wp

RUN     sed -i "s|listen = /run/php/php7.4-fpm.sock|listen = 9000|g" /etc/php/7.4/fpm/pool.d/www.conf

RUN     wp core download  --allow-root

RUN     wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb --allow-root
RUN     wp core --allow-root install --url=$DOMAIN_NAME --title=$DOMAIN_NAME --admin_user=$MYSQL_USER --admin_password=$MYSQL_ROOT_PASSWORD --admin_email=amgharmahdi1@gmail.com

EXPOSE  9000

CMD ["/usr/sbin/php-fpm7.4", "-F"]

