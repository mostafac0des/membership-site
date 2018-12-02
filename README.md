# membership-site

A framework for launching new Django membership site quickly on to an **Ubuntu 18.04** LTS instance using [Amazon Lightsail](https://aws.amazon.com/lightsail/) or [Amazon EC2](https://aws.amazon.com/ec2/). Comes with a complete user authentication flow, custom user model, environment variables, and social authentication options via Gmail, Facebook, Twitter, etc.

## Features

- Django 2.1 and Python 3.7
- PostgreSQL database
- [Django-allauth](https://django-allauth.readthedocs.io/en/latest/installation.html)
- Dockerized containers
- Environment variables
- **NGINX** and **Gunicorn** for production
- **Let's Encrypt** and **Certbot** to enable HTTPS

## Required

Get the right flavor of Docker for your OS...
- [Docker for Mac](https://docs.docker.com/docker-for-mac/install/)
- [Docker for Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
- [Docker for Windows](https://docs.docker.com/docker-for-windows/install/)

**Note:** The recommended requirement for deployment of this project is 4 GB RAM.
For Docker for Mac, this can be set by following these steps:

Open Docker > Preferences > Advanced tab, then set memory to 4.0 GiB

## Setup:

### Local:

copy your environment variable file
- `cp etc/env.dist site/.env`

**note: set `DEBUG=True` and update as needed**

run your web application locally
- `docker-compose up --build -d`

### Production:

- `cd membership-site && sudo chmod u+x ubuntu-start.sh`
- `echo -e "yes\nyes\nyes" | ./ubuntu-start.sh`

**note: log out & back in to remove the need for sudo**

- `cd membership-site`

run your web application
- `docker-compose -f production.yml up --build -d`

### Delete database data:

stop containers
- `docker-compose stop`

search and delete volumes
- `docker volume ls`
- `docker volume rm <name_of_volume>`

rebuild volumes and restart application

locally
- `docker-compose up -d`

production
- `docker-compose up -f production.yml -d`

### Enable Let's Encrypt SSL

Add your domains and email addresses to `start-letsencrypt.sh`

- `sudo chmod +x ./start-letsencrypt.sh`

- `sudo ./start-letsencrypt.sh`

Certbot will automatically check for renewals every 12 hours
