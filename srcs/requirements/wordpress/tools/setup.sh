#!/bin/sh

set -e

if [ ! -f "/usr/local/bin/wp" ]; then
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp
fi

if [ ! -f "/var/www/html/wp-settings.php" ]; then
    php83 -d memory_limit=512M /usr/local/bin/wp core download --allow-root --locale=tr_TR --path=/var/www/html
fi

if [ ! -f "/var/www/html/wp-config.php" ]; then
    /usr/local/bin/wp config create \
        --path=/var/www/html \
        --dbname="$WORDPRESS_DB_NAME" \
        --dbuser="$WORDPRESS_DB_USER" \
        --dbpass="$WORDPRESS_DB_PASSWORD" \
        --dbhost="$WORDPRESS_DB_HOST" 

    /usr/local/bin/wp core install \
        --path=/var/www/html \
        --url="$WORDPRESS_URL" \
        --title="$WORDPRESS_TITLE" \
        --admin_user="$WORDPRESS_ADMIN_USER" \
        --admin_password="$WORDPRESS_ADMIN_PASSWORD" \
        --admin_email="$WORDPRESS_ADMIN_EMAIL" 
    /usr/local/bin/wp user create \
        --path=/var/www/html \
        "$WORDPRESS_USER" "$WORDPRESS_USER_EMAIL" \
        --role=subscriber \
        --user_pass="$WORDPRESS_USER_PASSWORD"
fi

exec "$@"
