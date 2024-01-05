FROM    debian:oldstable

WORKDIR /var/www
EXPOSE  8080

RUN     apt update -y && apt upgrade -y && apt install -y \
        wget vim curl php php-mysqli wget

RUN     wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O /var/www/index.php

# RUN     mv adminer-4.8.1.php index.php

CMD [ "php", "-S", "[::]:8080" , "-t", "/var/www" ]

# # RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"