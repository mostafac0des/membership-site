#!/bin/bash

# Wait for db container to run
sleep 7s

# Apply database migrations
echo "Apply database migrations"
python manage.py migrate --noinput

# Collect static files
echo "Collect static files"
python manage.py collectstatic --noinput

gunicorn --bind 0.0.0.0:8080 core.wsgi