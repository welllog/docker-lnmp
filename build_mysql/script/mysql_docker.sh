#!/bin/bash
docker run --name mysql -p 3306:3306 -v ../data/mysql:/var/lib/mysql -v ../log/mysql:/var/log/mysql -e MYSQL_ROOT_PASSWORD=admin888 -d orinfy/mysql