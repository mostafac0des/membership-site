# membership-site

A framework for launching new Django membership site quickly on to an **Ubuntu 18.04** LTS instance using [Amazon Lightsail](https://aws.amazon.com/lightsail/) or [Amazon EC2](https://aws.amazon.com/ec2/). Comes with a complete user authentication flow, custom user model, environment variables, and social authentication options via Gmail, Facebook, Twitter, etc. This project is inspired by [DjangoX](https://github.com/wsvincent/djangox)

## Features

- Django 2.1 and Python 3.7
- PostgreSQL database
- Dockerized containers
- Environment variables
- **NGINX** and **Gunicorn** for production

## Setup:

### local:

Use pipenv
- `cd membership-site && pipenv install`
- `pipenv shell`
- `cd site`
- `./manage.py migrate`
- `./manage.py collectstatic`
- `./manage.py runserver`

### production:

steps to deploy to production:
- `cd membership-site && sudo chmod u+x ubuntu-start.sh`
- `echo -e "yes\nyes\nyes" | ./ubuntu-start.sh`
- log out & back in

migrate & collectstatic
- `sudo chmod u+x site/deploy-tasks.sh`
- `./site/deploy-tasks.sh`

run server
- `docker-compose up --build -d`
