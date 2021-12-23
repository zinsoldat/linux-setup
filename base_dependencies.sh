#! /bin/bash

if [ -f /etc/debian_version ]; then
    echo "update packages"
    sudo apt update && sudo apt upgrade

    echo "install virtualenv"
    sudo apt install -y python3-virtualenv python3
elif [ -f /etc/manjaro-release ]; then
    echo "detected manjaro"
    echo "update packages"
    sudo pacman -Syu

    echo "install virtualenv"
    sudo pacman -S --noconfirm python-virtualenv python3
fi

echo "setup virtualenv"
virtualenv env
. env/bin/activate
pip install -r ./requirements.txt