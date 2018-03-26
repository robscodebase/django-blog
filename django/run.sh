#!/bin/bash
docker stop django && docker rm django
docker rmi django && docker rmi $(docker images -a | grep "none")
docker build -t django .
docker run  -itd --name django \
  -v /home/robert/django-blog/django-volume:/ \
  django
docker exec -ti django /bin/bash
#docker logs -f django
