FROM    debian:oldstable

RUN     apt update -y && apt upgrade -y && apt install -y vim curl git zsh systemctl
RUN     apt install -y nginx openssl 
RUN     rm /etc/nginx/sites-available/default && mkdir -p /etc/nginx/ssl 

COPY    ./conf/nginx.conf /etc/nginx/nginx.conf
COPY    ./tools/index.html /etc/nginx/

RUN     openssl req -x509 -new -newkey rsa:2048 -nodes \
        -keyout /etc/nginx/ssl/eamghar.key \
        -out /etc/nginx/ssl/eamghar.crt \
        -subj "/C=MA/ST=Béni Mellal-Khénifra/L=Khouribga/O=42/OU=42/CN=eamghar.42.fr/UID=eamghar"

RUN     service nginx start

EXPOSE  443

CMD ["nginx", "-g", "daemon off;"]


# RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
