
#!/bin/bash

# install latest version of docker the lazy way
curl -sSL https://get.docker.com | sh

# upgrade packages
sudo apt update

# make it so you don't need to sudo to run docker commands
usermod -aG docker ubuntu

# install docker and docker-compose
sudo apt install docker-compose
sudo apt install docker-ce