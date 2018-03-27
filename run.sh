#!/bin/bash
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)
docker rmi $(docker images -a | grep "django") && docker rmi $(docker images -a | grep "none")
#docker-compose run web django-admin.py startproject djangoblog .
#docker-compose up
docker build -t django .
docker run -itd -p 8000:8000 --name django \
  -v /home/robert/django-blog:/code \
  django
docker exec -ti django /bin/bash
#docker logs -f django
