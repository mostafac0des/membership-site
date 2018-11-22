
#!/bin/bash

# install latest version of docker the lazy way
curl -sSL https://get.docker.com | sh

# add lets encrypt
# sudo add-apt-repository ppa:certbot/certbot

# upgrade packages
sudo apt update

# make it so you don't need to sudo to run docker commands
# note: make sure to log out and log in back in to reflect
sudo groupadd docker
sudo usermod -aG docker ubuntu


# install docker and docker-compose
sudo apt install docker-compose
sudo apt install docker-ce

# open firewall
sudo ufw enable
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 'OpenSSH'

# Create .env file
cp etc/env.dist site/.env
