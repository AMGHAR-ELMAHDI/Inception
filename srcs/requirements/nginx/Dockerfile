FROM    debian:oldstable

RUN     apt update -y && apt upgrade -y && apt install -y nginx openssl
RUN     rm -rf /etc/nginx/sites-available/default && mkdir -p /etc/nginx/ssl 

RUN     openssl req -x509 -new -newkey rsa:2048 -nodes \
        -out /etc/nginx/ssl/eamghar.crt \
        -keyout /etc/nginx/ssl/eamghar.key \
        -subj "/C=MA/ST=Béni Mellal-Khénifra/L=Khouribga/O=42/OU=42/CN=eamghar.42.fr/UID=eamghar"

COPY    ./conf/nginx.conf /etc/nginx/sites-available/default

RUN     mkdir -p /run/nginx

CMD     ["nginx", "-g", "daemon off;"]

