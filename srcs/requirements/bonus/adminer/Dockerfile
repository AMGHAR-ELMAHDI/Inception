FROM    debian:oldstable

WORKDIR /var/www
EXPOSE  8080

RUN     apt update -y && apt upgrade -y && apt install -y wget php php-mysqli

RUN     wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O /var/www/index.php


CMD [ "php", "-S", "[::]:8080" , "-t", "/var/www" ]

# # RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"