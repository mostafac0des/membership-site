#!/bin/bash

# Build images
echo "Bulding images.. "
docker-compose build

# Apply database migrations
echo "Apply database migrations"
docker-compose run web ./manage.py migrate

# Collect static files
echo "Collect static files"
docker-compose run web ./manage.py collectstatic --noinput
