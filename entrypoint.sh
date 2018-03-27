#!/bin/bash

# Collect static files
python manage.py collectstatic --noinput

# Apply database migrations
python manage.py migrate

# Start server
echo "Starting server"
python manage.py runserver 0.0.0.0:8000
