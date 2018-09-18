#!/bin/bash
docker run --name nginx -p 80:80 -p 443:443 -v ../etc/nginx/conf.d:/etc/nginx/conf.d -v ../log/nginx:/var/log/nginx -v ../www:/var/www -d orinfy/nginx