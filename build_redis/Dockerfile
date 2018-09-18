FROM alpine:3.8
MAINTAINER  orinfy@foxmail.com

RUN sed -i '1c http://mirrors.aliyun.com/alpine/v3.8/main'  /etc/apk/repositories \
	&& sed -i '2c http://mirrors.aliyun.com/alpine/v3.8/community'  /etc/apk/repositories \
	&& apk add -U tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
	&& apk del tzdata && apk --update --no-cache add redis

COPY config/redis.conf /etc/redis.conf

VOLUME ["/var/log/redis", "/var/lib/redis"]

EXPOSE 6379

ENTRYPOINT ["redis-server", "/etc/redis.conf"]