
#!/bin/bash

sudo apt update

# make it so you don't need to sudo to run docker commands
usermod -aG docker ubuntu

# install docker-compose
sudo apt install docker-compose

# install docker
sudo apt install docker-ce
sudo chmod +x docker-compose