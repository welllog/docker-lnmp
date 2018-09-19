## nginx+php7.2+mysql+redis镜像
### 安装和启动
1. 安装docker
2. 安装docker-compose
3. ``git clone https://github.com/welllog/docker-lnmp``
4. 为了避免文件夹读写权限问题，将项目文件夹权限给予docker用户
5. 进入代码目录``docker-compose up -d``运行服务

#### 项目存放
项目可直接放于www目录下，不过为了方便管理，建议单独存放，然后软链至www目录下

#### 服务配置
nginx配置在build_nignx/config目录下，其它服务同理

#### 单独运行一个容器
如nginx:``cd build_nginx``,``script/build_nginx.sh``,``script/nginx_docker``

#### nginx虚拟机配置
在etc/nginx/conf.d目录中可单独配置nginx

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
