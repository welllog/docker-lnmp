#!/bin/bash
docker run --name redis -p 6379:6379 -v ../data/redis:/var/lib/redis -v ../log/redis:/var/log/redis -d orinfy/redis