# docker_python
docker cointainer with availaible jupyter and python3 support

REQUIREMENTS:

docker 
centos:7(cointainer image)

STEPS:

1) git clone https://github.com/gautamnankani/docker_python.git

2) go to the folder

#To build the image(REQUIREMENT: INTERNET)

3) bash build.sh

###############################################################


EITHER FOLLOW (4,5)  OR  (6,7)
Preffered (4,5)

(4,5)th steps are only require if you want to set password to your jupyter notebook else you have to manually copy the url that cointains token

#To setup launch the docker and set the jupyter password

4) open setup.sh  
  #change the password variable to set jupyter password
  #else the password will be "password"
 
5) bash setup.sh
#######now you are good to go
open browser in base OS and type URL(localhost:8888)
Enter the password as discussed in 4th step

After these cmds you are free to use docker-compose cmds untill you remove the cointainer and decide to launch new one
in this of new cointainer it is prefered to do (4,5) th steps for seting up jupyter password
  

##################################################################

(6,7) After these you have to copy URL from cointainer 

6) docker-compose up

7) copy the url and paste it to your base system web browser
