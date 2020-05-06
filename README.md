# docker_python
docker cointainer with availaible jupyter and python3 support

REQUIREMENTS:

docker 

centos:7(cointainer image)

docker-compose

# STEPS:

1) git clone https://github.com/gautamnankani/docker_python.git

## Go to the folder

2) cd <folder_name_that you_cloned>

## To build the image(REQUIREMENT: INTERNET)

3) docker build -t <image_name:tag> .
   
   eg-  
   
	 docker build -t python_img:v1 .

## To run container using docker-compose, first ensure <image_name:tag> you gave to the image in 3rd step is same in docker compose else change it

4) docker-compose up -d 

## To set up password for your jupyter notebook, use these 2 command only after first launch, the password will be permanently set thereafter

5) use below to commands to set a password for jupyter-notebook
  
     a) docker exec $(docker-compose ps -q) python3 pass.py <password_you want to set>

     b) docker-compose restart

     #$(docker-compose ps -q) here give the running container id you just launch, you can write manually your container_name here
  
     #Also note that you container must be running to set password inside it

6) Now you can browse for "localhost:8888" at you base system browser and use the password you set in 5th step to login

## If you did not set password:-
#you can still access jupyter using the url from inside the docker container
#run docker using:  docker-compose up
#and copy the URL from the container itself
