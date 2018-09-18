#!/bin/bash
docker run --name nginx -p 80:80 -p 443:443 -v `pwd`/etc/nginx/conf.d:/etc/nginx/conf.d -v `pwd`/log/nginx:/var/log/nginx -v `pwd`/www:/var/www -d orinfy/nginx