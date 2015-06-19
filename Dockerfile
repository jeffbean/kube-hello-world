FROM alpine
MAINTAINER jeff.bean@hds.com
ENV http_proxy http://rproxy.mcp.com:3128
ENV https_proxy http://rproxy.mcp.com:3128

RUN apk --update add nginx php-fpm
RUN mkdir -p /tmp/nginx && echo "clear_env = no" >> /etc/php/php-fpm.conf
ADD www /www
ADD nginx.conf /etc/nginx/
RUN unset http_proxy
RUN unset https_proxy
EXPOSE 80
CMD php-fpm -d variables_order="EGPCS" && exec nginx -g "daemon off;"
