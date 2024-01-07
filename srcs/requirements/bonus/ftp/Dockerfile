FROM    debian:oldstable

EXPOSE  21
WORKDIR /var/www

ENV     FTP_USER=eamghar
ENV     FTP_PASSWORD=1337

RUN     apt update -y && apt upgrade -y && apt install -y vsftpd vim wget curl zsh git

COPY    ./tools/script.sh .
RUN     chmod +x script.sh

CMD [ "./script.sh" ]

# # RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
