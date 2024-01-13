FROM    debian:oldstable

RUN     apt update -y && apt upgrade -y && apt install -y vsftpd ftp

COPY    ./tools/scr.sh .
RUN     chmod +x scr.sh

CMD     [ "./scr.sh" ]
