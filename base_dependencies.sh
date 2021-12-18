#! /bin/bash

echo "update packages"
sudo apt update && sudo apt upgrade

echo "install virtualenv"
sudo apt install -y python3-virtualenv python3

echo "setup virtualenv"
virtualenv env
. env/bin/activate
pip install -r ./requirements.txt