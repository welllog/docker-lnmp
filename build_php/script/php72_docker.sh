#!/bin/bash
docker run --name php72 -p 9000:9000 -v ../www:/var/www -v ../log/php:/var/log/php -d orinfy/php72