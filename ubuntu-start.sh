
#!/bin/bash

# install latest version of docker the lazy way
curl -sSL https://get.docker.com | sh

# add lets encrypt
# sudo add-apt-repository ppa:certbot/certbot

# upgrade packages
sudo apt update

# install certbot
# sudo apt-get install python-certbot-nginx

# make it so you don't need to sudo to run docker commands
usermod -aG docker ubuntu

# install docker and docker-compose
sudo apt install docker-compose
sudo apt install docker-ce

# open firewall
sudo ufw enable
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 'OpenSSH'