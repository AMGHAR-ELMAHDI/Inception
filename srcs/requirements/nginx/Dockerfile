FROM    debian:oldstable

RUN     apt update -y && apt upgrade -y && apt install -y nginx openssl
RUN     rm -rf /etc/nginx/sites-available/default && mkdir -p /etc/nginx/ssl 

COPY    ./tools/index.html /etc/nginx/

RUN     openssl req -x509 -new -newkey rsa:2048 -nodes \
        -out /etc/nginx/ssl/eamghar.crt \
        -keyout /etc/nginx/ssl/eamghar.key \
        -subj "/C=MA/ST=Béni Mellal-Khénifra/L=Khouribga/O=42/OU=42/CN=eamghar.42.fr/UID=eamghar"

COPY    ./conf/nginx.conf /etc/nginx/

RUN     mkdir -p /run/nginx

EXPOSE	443

CMD     ["nginx", "-g", "daemon off;"]

# RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
