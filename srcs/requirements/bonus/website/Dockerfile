FROM    debian:oldstable

WORKDIR /var/www

EXPOSE  7546

RUN     apt update -y && apt upgrade -y && apt install -y nginx

RUN     rm -rf /etc/nginx/sites-available/default

COPY    ./conf/nginx.conf /etc/nginx/sites-available/default
COPY    ./tools/index.html .

CMD [ "nginx", "-g", "daemon off;" ]

# # RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
