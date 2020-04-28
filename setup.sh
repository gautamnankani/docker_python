docker build -t gautam191/python_img:v1 .
docker-compose up -d
docker exec $(docker-compose ps -q) python3 pass.py password
docker-compose restart
