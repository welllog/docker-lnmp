#!/bin/bash
docker run --name php72 -p 9000:9000 -v `pwd`/www:/var/www -v `pwd`/log/php:/var/log/php -d orinfy/php72