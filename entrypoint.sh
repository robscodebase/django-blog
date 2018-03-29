#!/bin/bash

set -e
sleep 5
python3 manage.py migrate
echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@admin.com', 'demopass')" | python manage.py shell
python3 manage.py runserver 0.0.0.0:8000
