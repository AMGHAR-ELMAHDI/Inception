FROM    debian:oldstable

EXPOSE  21
WORKDIR /var/www

RUN     apt update -y && apt upgrade -y && apt install -y vsftpd

COPY    ./tools/scr.sh .
RUN     chmod +x scr.sh

CMD     [ "./scr.sh" ]

# # RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
