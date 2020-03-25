#!/bin/bash
cd $(dirname $0)
cat ./docker_bashrc.sh >> ~/.bashrc
mkdir ~/.docker > /dev/null 2>&1
if [[ $(uname -a) =~ MB ]]; then
    brew install ggrep
fi
#===== docker =====
#brew install docker
curl https://get.docker.com > ~/.tmp/docker_install.sh
chmod +x ~/.tmp/docker_install.sh
~/.tmp/docker_install.sh
# https://pepa.holla.cz/wp-content/uploads/2016/10/Using-Docker.pdf

#===== docker-compose =====
#brew install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > ~/.docker/docker-compose
chmod +x ~/.docker/docker-compose
