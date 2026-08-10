FROM alpine:3.23.5

RUN apk update && apk add --no-cache \
    php83 \
    php83-fpm \
    php83-mysqli \
    php83-phar \
    php83-iconv \
    php83-json \
    php83-openssl \
    php83-curl \
    php83-mbstring \
    curl \
    mysql-client && ln -s /usr/bin/php83 /usr/bin/php

COPY ./conf/www.conf /etc/php83/php-fpm.d/www.conf

COPY ./tools/setup.sh /usr/local/bin/setup.sh
WORKDIR /var/www/html
EXPOSE 9000

ENTRYPOINT ["/usr/local/bin/setup.sh"]
CMD ["php-fpm83", "-F"]
