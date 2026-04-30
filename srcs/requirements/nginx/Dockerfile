FROM alpine:latest
RUN apk update && apk add nginx openssl
RUN mkdir -p /run/nginx
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]