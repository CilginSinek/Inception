FROM alpine:3.23.5

RUN apk update && apk add nginx openssl
RUN mkdir -p /run/nginx

COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./tools/setSSL.sh /usr/local/bin/setSSL.sh

RUN chmod +x /usr/local/bin/setSSL.sh

EXPOSE 443

ENTRYPOINT ["/usr/local/bin/setSSL.sh"]
CMD ["nginx", "-g", "daemon off;"]