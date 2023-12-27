FROM    debian:oldstable

RUN     apt update -y && apt upgrade -y && apt install -y vim curl git zsh systemctl
RUN     apt install -y mariadb-server mariadb-client
RUN     mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld && chmod 777 /var/run/mysqld
RUN     sed -i "s|bind-address            = 127.0.0.1|bind-address            = 0.0.0.0|g" /etc/mysql/mariadb.conf.d/50-server.cnf
RUN     mkdir /etc/my.cnf.d/ && touch /etc/my.cnf.d/docker.cnf
RUN     echo "[mysqld]" >> /etc/my.cnf.d/docker.cnf
RUN     echo "skip-host-cache" >> /etc/my.cnf.d/docker.cnf
RUN     echo "skip-name-resolve" >> /etc/my.cnf.d/docker.cnf
RUN     echo "bind-address =0.0.0.0" >> /etc/my.cnf.d/docker.cnf

COPY    ../tools/script.sh /tmp/script.sh
# RUN     chmod +x /tmp/script.sh
# RUN     sh /tmp/script.sh
# RUN     exec mysqld --user=eamghar

# CMD ["sh", "script.sh"]


ENTRYPOINT    ["tail", "-f", "/dev/null"]

# RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
