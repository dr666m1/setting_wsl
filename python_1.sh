#!/bin/bash
cd $(dirname $0)
sudo apt remove libssl-dev
sudo apt-get install -y make build-essential zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git libssl1.0-dev
curl https://pyenv.run | bash

cat ./python_bashrc.sh >> ~/.bashrc
