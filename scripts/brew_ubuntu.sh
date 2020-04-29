#!/bin/bash 

sudo apt update
sudo apt install -y build-essential curl file git gnutls-bin
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
