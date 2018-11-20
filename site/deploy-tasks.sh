#!/bin/bash

# Apply database migrations
echo "Apply database migrations"
sudo docker-compose run web ./manage.py migrate

# Collect static files
echo "Collect static files"
sudo docker-compose run web ./manage.py collectstatic --noinput
