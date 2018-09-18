#!/bin/bash
docker run --name redis -p 6379:6379 -v `pwd`/data/redis:/var/lib/redis -v `pwd`/log/redis:/var/log/redis -d orinfy/redis