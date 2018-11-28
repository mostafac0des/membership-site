#!/bin/bash

# Apply database migrations
echo "Apply database migrations"
docker exec -it web ./manage.py migrate

# Collect static files
echo "Collect static files"
docker exec -it web ./manage.py collectstatic --noinput
