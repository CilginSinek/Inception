FROM alpine:3.22.4
RUN apk update && apk add mariadb mariadb-client
COPY ./conf/mariadb.conf /etc/my.cnf.d/mariadb.conf
COPY ./conf/wordpress.sql /tmp/wordpress.sql

COPY ./tools/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh
RUN ./usr/local/bin/setup.sh
RUN rm -rf /usr/local/bin/setup.sh

EXPOSE 3306
CMD ["mysqld", "--user=mysql", "--datadir=/var/lib/mysql"]