FROM    debian:oldstable

ENV     FTP_USER=eamghar
ENV     FTP_PASSWORD=1337

RUN     apt update -y && apt upgrade -y && apt install -y vsftpd ftp

COPY    ./tools/scr.sh .
RUN     chmod +x scr.sh

CMD     [ "./scr.sh" ]

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
