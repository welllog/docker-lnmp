## nginx+php7.2+mysql+redis镜像
### 安装和启动
1. 安装docker
2. 安装docker-compose
3. ``git clone https://github.com/welllog/docker-lnmp``
4. 为了避免文件夹读写权限问题，将项目文件夹权限给予docker用户
5. 进入代码目录``docker-compose up -d``运行服务

#### 服务配置
nginx配置在build_nignx/config目录下，其它服务同理

#### 单独运行一个容器
如nginx:``cd build_nginx``,``script/build_nginx.sh``,``script/nginx_docker``

#### nginx虚拟机配置
在etc/nginx/conf.d目录中可单独配置nginx
