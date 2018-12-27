#!/usr/bin/env bash

echo "

Hello! Choose what you want to install:

1. Ubuntu 18.04 LTS English
2. Ubuntu 18.04 LTS Polish
"

read choose


install_ubuntu_english()
{
    cd ./ubuntu
    cp Dockerfile_english Dockerfile
    docker build -t docker_vnc_ubuntu_english .
}

install_ubuntu_polish()
{
    cd ./ubuntu
    cp Dockerfile_polish Dockerfile
    docker build -t docker_vnc_ubuntu_polish .
}


if [ "$choose" = 1 ]
then
    install_ubuntu_english
elif [ "$choose" = 2 ]
then
    install_ubuntu_polish
else
    echo "Bad option. Script exit."
fi




