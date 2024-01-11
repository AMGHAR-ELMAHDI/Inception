FROM    debian:oldstable

RUN     apt update -y && apt upgrade -y
RUN     apt install -y mariadb-server mariadb-client
RUN     mkdir -p /var/run/mysqld && chown -R mysql /var/run/mysqld && chmod -R 777 /var/run/mysqld
RUN     sed -i "s|bind-address            = 127.0.0.1|bind-address            = 0.0.0.0|g" /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE  3306
COPY    ./tools/scr.sh .
RUN     chmod +x scr.sh

CMD     ["./scr.sh"]

# # RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# docker exec -it 359 mysql -u root -p -e "SHOW DATABASES;"