FROM    debian:oldstable

# EXPOSE  9443

RUN     apt update -y && apt upgrade -y && apt install -y wget tar

RUN     mkdir -p /var/lib/portainer

RUN     adduser --home /var/lib/portainer portainer

RUN     wget https://github.com/portainer/portainer/releases/download/2.19.4/portainer-2.19.4-linux-amd64.tar.gz -O portainer.tar.gz
RUN     tar -xf portainer.tar.gz && rm portainer.tar.gz && mv portainer /usr/local

CMD     [ "/usr/local/portainer/portainer" ]

# # RUN     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
