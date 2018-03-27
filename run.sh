#!/bin/bash
docker stop django && docker rm django
docker rmi django && docker rmi $(docker images -a | grep "none")
docker-compose run web django-admin.py startproject djangoblog .
#docker logs -f django
