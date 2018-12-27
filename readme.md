## nginx+php7.2+mysql+redis镜像
### 安装和启动
>1. 安装docker
>2. 安装docker-compose
>3. ``git clone https://github.com/welllog/docker-lnmp``
>4. 为了避免文件夹读写权限问题，将项目文件夹权限给予docker用户
>5. 进入代码目录``docker-compose up -d``运行服务

#### 项目存放
>项目可直接放于www目录下，不过为了方便管理，建议单独存放，然后软链至www目录下

#### 服务配置
>* nginx配置位于``build_nignx/config``,虚拟机配置位于``etc/nginx/conf.d``
>* php配置位于``build_php/config``
>* mysql配置位于``build_mysql/config``
>* redis配置位于``build_redis/config``
>* 除虚拟机配置外，其它配置改动都需要重新编译镜像，虚拟机配置改动只需重启nginx容器


#### 单独运行一个容器
>如nginx:
>
```
cd build_nginx
script/build_nginx.sh
script/nginx_docker.sh
```


#### tips
>php的扩展依据本人需要，配置得较多。使用者可根据实际情况在``build_php/Dockerfile``中增减扩展，改动后同时需要改动``build_php/config/php.ini``,同上需要重新编译php镜像

### 目录结构
```
.
├── build_mysql
│   ├── Dockerfile
│   ├── config
│   │   └── my.cnf
│   └── script
│       ├── build_mysql.sh
│       └── mysql_docker.sh
├── build_nginx
│   ├── Dockerfile
│   ├── config
│   │   └── nginx.conf
│   └── script
│       ├── build_nginx.sh
│       └── nginx_docker.sh
├── build_php
│   ├── Dockerfile
│   ├── config
│   │   ├── php-fpm.conf
│   │   └── php.ini
│   └── script
│       ├── build_php72.sh
│       └── php72_docker.sh
├── build_redis
│   ├── Dockerfile
│   ├── config
│   │   └── redis.conf
│   └── script
│       ├── build_redis.sh
│       └── redis_docker.sh
├── data
├── docker-compose.yaml
├── etc
│   └── nginx
│       └── conf.d
│           └── demo.conf
├── log
├── readme.md
├── tree.png
└── www
```

18 directories, 21 files
