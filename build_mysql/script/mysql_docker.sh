#!/bin/bash
docker run --name mysql -p 3306:3306 -v `pwd`/data/mysql:/var/lib/mysql -v `pwd`/log/mysql:/var/log/mysql -e MYSQL_ROOT_PASSWORD=admin888 -d orinfy/mysql