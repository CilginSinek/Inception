FROM alpine:3.23.5

RUN apk add --no-cache mariadb mariadb-client

RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld
RUN chown -R mysql:mysql /var/lib/mysql

COPY ./conf/mariadb.conf /etc/my.cnf.d/mariadb-server.cnf
COPY ./tools/setup.sh /usr/local/bin/setup.sh

RUN chmod +x /usr/local/bin/setup.sh

EXPOSE 3306

ENTRYPOINT ["/usr/local/bin/setup.sh"]
CMD ["mysqld", "--user=mysql", "--datadir=/var/lib/mysql"]