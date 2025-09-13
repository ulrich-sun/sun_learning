#!/bin/bash

curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh
sudo usermod -aG docker ubuntu
sudo systemctl restart docker
sudo systemctl enable docker