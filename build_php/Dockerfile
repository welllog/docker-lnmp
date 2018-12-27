FROM  alpine:3.8
MAINTAINER  orinfy@foxmail.com

RUN sed -i '1c http://mirrors.aliyun.com/alpine/v3.8/main'  /etc/apk/repositories \
    && sed -i '2c http://mirrors.aliyun.com/alpine/v3.8/community'  /etc/apk/repositories \
	&& apk add -U tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
	&& apk del tzdata

RUN apk --update --no-cache add build-base php7 php7-fpm php7-mysqli php7-json php7-openssl php7-curl \
    php7-zlib php7-xml php7-phar php7-intl php7-dom php7-xmlreader php7-ctype php7-dba \
    php7-mbstring php7-gd php7-session php7-redis php7-pdo php7-pdo_mysql php7-pdo_sqlite \
    php7-pdo_dblib php7-pdo_odbc php7-pdo_pgsql php7-pgsql php7-mysqlnd php7-memcached \
    php7-bcmath php7-bz2 php7-calendar  php7-exif php7-fileinfo php7-ftp php7-gettext php7-gmp \
    php7-iconv php7-ldap php7-mysqlnd php7-odbc php7-pcntl  php7-posix php7-pspell php7-shmop \
    php7-simplexml php7-soap php7-sockets php7-sodium php7-sqlite3 php7-sysvmsg php7-sysvsem \
    php7-sysvshm php7-tokenizer php7-wddx php7-xmlrpc php7-xmlwriter php7-xsl php7-opcache \
    php7-zip php7-mongodb php7-mcrypt php7-dev php7-pear composer gmp-dev libuv-dev openssl-dev cmake\
    && pecl install grpc && cd /tmp && wget -c https://codeload.github.com/swoole/swoole-src/zip/master -O sw && unzip sw \
    && cd swoole* && phpize && ./configure --with-php-config=php-config && make && make install \
    && cd .. \
    && wget -c https://codeload.github.com/datastax/cpp-driver/zip/3fe834b8829734d3949527078b07bc4a0f1245cb -O cpp \
    && unzip cpp && cd cpp-driver* \
    && mkdir build && cd build && cmake .. && make && make install && cd ../.. \
    && wget -c https://codeload.github.com/datastax/php-driver/zip/master -O phpcas \
    && unzip phpcas && cd php-driver* && cd ext && phpize && ./configure --with-php-config=php-config && make && make install && cd ../.. \
    && wget -c https://codeload.github.com/laruence/yaf/zip/master -O ya \
    && unzip ya && cd yaf* && phpize && ./configure --with-php-config=php-config && make && make install && cd .. \
    && rm -rf * && apk del build-base cmake \
    && sed -i -e 's/;emergency_restart_threshold = 0/emergency_restart_threshold = 15/' /etc/php7/php-fpm.conf \
    && sed -i -e 's/;emergency_restart_interval = 0/emergency_restart_interval = 1m/' /etc/php7/php-fpm.conf

COPY config/php-fpm.conf /etc/php7/php-fpm.d/zzz_custom.conf
COPY config/php.ini /etc/php7/conf.d/zzz_custom.ini

VOLUME ["/var/www", "/var/log/php"]

EXPOSE 9000

ENTRYPOINT ["/usr/sbin/php-fpm7", "-F"]

