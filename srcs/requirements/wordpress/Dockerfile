FROM    debian:oldstable

WORKDIR /var/www

RUN     apt update -y && apt upgrade -y && apt install -y vim curl git zsh php php-fpm php-mysqli wget unzip zip
RUN     sed -i "s|listen = /run/php/php7.4-fpm.sock|listen = 9000|g" /etc/php/7.4/fpm/pool.d/www.conf

RUN     wget https://wordpress.org/wordpress-6.4.2.zip && unzip -q wordpress-6.4.2.zip && cp -rf wordpress/* .  && rm -rf wp-config-sample.php && chmod -R 777 wp-content

COPY    ./tools/script.sh .
RUN     chmod +x script.sh && sh ./script.sh
# CMD     ["ls"]
ENTRYPOINT [ "tail", "-f", "/dev/null" ]

# # RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# /run/php/php7.4-fpm.sock