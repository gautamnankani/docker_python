#!/bin/bash

jupyter_password=password  # you can change it

docker-compose up -d
docker exec $(docker-compose ps -q) python3 pass.py $jupyter_password
docker-compose restart
