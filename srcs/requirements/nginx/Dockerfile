FROM    debian:oldstable

RUN     apt update -y && apt upgrade -y && apt install -y vim curl git zsh systemctl
RUN     apt install -y nginx openssl 
RUN     rm /etc/nginx/sites-available/default && mkdir -p /etc/nginx/ssl 

COPY    ./conf/nginx.conf /etc/nginx/nginx.conf
COPY    ./tools/index.html /etc/nginx/

RUN     openssl req -x509 -new -newkey rsa:2048 -nodes \
        -keyout /etc/nginx/ssl/eamghar.key \
        -out /etc/nginx/ssl/eamghar.crt \
        -subj "/C=MA/CN=eamghar"

        

EXPOSE  443

ENTRYPOINT    ["tail", "-f", "/dev/null"]



# RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# -subj "/C=[XX]/ST=[XXXXXXXXX]/L=[XXXXX]/O=[XXXXXXXXXX]/OU=[XXX]/CN=[XXXXX]"
