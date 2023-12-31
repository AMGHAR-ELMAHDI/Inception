FROM    debian:oldstable

RUN     apt update -y && apt upgrade -y
RUN     apt install -y mariadb-server mariadb-client
RUN     mkdir -p /var/run/mysqld && chown -R mysql /var/run/mysqld && chmod -R 777 /var/run/mysqld
RUN     sed -i "s|bind-address            = 127.0.0.1|bind-address            = 0.0.0.0|g" /etc/mysql/mariadb.conf.d/50-server.cnf
RUN     mkdir /etc/my.cnf.d/ && touch /etc/my.cnf.d/docker.cnf

ENV     DOMAIN_NAME=eamghar.42.fr
ENV     MYSQL_DATABASE=wordpress
ENV     MYSQL_ROOT_PASSWORD=1337
ENV     MYSQL_USER=eamghar
ENV     MYSQL_PASSWORD=1337

RUN     echo "[mysqld]" >> /etc/my.cnf.d/docker.cnf
RUN     echo "skip-host-cache" >> /etc/my.cnf.d/docker.cnf
RUN     echo "skip-name-resolve" >> /etc/my.cnf.d/docker.cnf
RUN     echo "bind-address =0.0.0.0" >> /etc/my.cnf.d/docker.cnf

EXPOSE  3306
COPY    ./tools/script.sh .
RUN     chmod +x script.sh
# RUN     sh ./script.sh
CMD     ["./script.sh"]

# # RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# docker exec -it 359 mysql -u root -p -e "SHOW DATABASES;"