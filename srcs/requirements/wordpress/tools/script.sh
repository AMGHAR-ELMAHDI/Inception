#!/bin/sh

#mandatory
wp core download  --allow-root
wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_ROOT_USER --dbpass=$MYSQL_ROOT_PASSWORD --dbhost=mariadb --allow-root
wp core install --url=$DOMAIN_NAME --title=$DOMAIN_NAME --admin_user=$MYSQL_ROOT_USER --admin_password=$MYSQL_ROOT_PASSWORD --admin_email=amgharmahdi1@gmail.com --allow-root
wp user create $MYSQL_USER randomMail@gmail.com --role=author --user_pass=$MYSQL_PASSWORD  --allow-root

#bonus
wp plugin update --all --allow-root
wp plugin install redis-cache --activate --allow-root
wp config set WP_REDIS_HOST redis --allow-root
wp config set WP_REDIS_PORT 6379 --raw --allow-root
wp redis enable --allow-root

/usr/sbin/php-fpm7.4 -F