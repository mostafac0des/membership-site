# membership-site

### local:

- `pipenv install`

### production:

- `cd membership-site && cp etc/env.dist .env`
- `sudo chmod u+x ubuntu-start.sh`
- `echo -e "yes\nyes\nyes" | ./ubuntu-start.sh`
- `touch site/.env`
