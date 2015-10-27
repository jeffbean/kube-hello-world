FROM alpine
MAINTAINER jeffreyrobertbean@gmail.com

RUN apk --update add nginx php-fpm
RUN mkdir -p /tmp/nginx && echo "clear_env = no" >> /etc/php/php-fpm.conf
ADD www /www
ADD nginx.conf /etc/nginx/

EXPOSE 8080
CMD php-fpm -d variables_order="EGPCS" && exec nginx -g "daemon off;"
