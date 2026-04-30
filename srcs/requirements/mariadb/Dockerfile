FROM alpine:latest
RUN apk update && apk add mariadb mariadb-client
COPY ./conf/mariadb.conf /etc/my.cnf.d/mariadb.conf
COPY ./conf/wordpress.sql /tmp/wordpress.sql
EXPOSE 3306