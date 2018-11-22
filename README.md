# membership-site

### local:

Use pipenv
- `pipenv install`

### production:

steps to deploy to production:
- `cd membership-site && sudo chmod u+x ubuntu-start.sh`
- `echo -e "yes\nyes\nyes" | ./ubuntu-start.sh`
- log out & back in
- `docker-compose up --build -d`

migrate & collectstatic
- `sudo chmod u+x site/deploy-tasks.sh`
- `./deploy-tasks.sh`
