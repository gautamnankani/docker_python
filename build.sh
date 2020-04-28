#!/bin/bash

# if you change image_name: don't forget to change it to same name in docker-compose file
#"image_name" here == "image" name in docker-compose.yml
image_name="python_img:v1"

docker build -t $image_name .
