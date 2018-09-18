FROM alpine:3.8
MAINTAINER  orinfy@foxmail.com

RUN sed -i '1c http://mirrors.aliyun.com/alpine/v3.8/main'  /etc/apk/repositories \
	&& sed -i '2c http://mirrors.aliyun.com/alpine/v3.8/community'  /etc/apk/repositories \
	&& apk add -U tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
	&& apk del tzdata && apk --update --no-cache add nginx

COPY config/nginx.conf /etc/nginx/nginx.conf

VOLUME ["/etc/nginx/conf.d", "/etc/nginx/certs", "/var/log/nginx", "/var/www"]

EXPOSE 80 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]