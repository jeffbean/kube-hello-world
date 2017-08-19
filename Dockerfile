FROM alpine:3.5
MAINTAINER jeffreyrobertbean@gmail.com

RUN apk --update add nginx ca-certificates php7-fpm 
RUN mkdir -p /run/nginx && echo "clear_env = no" >> /etc/php7/php-fpm.conf
ADD www /www
ADD nginx.conf /etc/nginx/

EXPOSE 8080
CMD php-fpm7 -d variables_order="EGPCS" && exec nginx -g "daemon off;"
