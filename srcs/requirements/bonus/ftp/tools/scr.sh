#!/bin/bash

mkdir -p /var/run/vsftpd/empty
service vsftpd start

adduser $FTP_USER --disabled-password

echo "$FTP_USER:$FTP_PASSWORD" | /usr/sbin/chpasswd

echo "$FTP_USER" | tee -a /etc/vsftpd.userlist 

chown nobody:nogroup /var/www
chmod a-w /var/www
chown $FTP_USER:$FTP_USER /var/www

sed -i -r "s/#write_enable=YES/write_enable=YES/1"   /etc/vsftpd.conf
sed -i -r "s/#chroot_local_user=YES/chroot_local_user=YES/1"   /etc/vsftpd.conf

echo "
local_enable=YES
allow_writeable_chroot=YES
pasv_enable=YES
local_root=/var/www
pasv_min_port=40000
pasv_max_port=40005
userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf

service vsftpd stop


/usr/sbin/vsftpd