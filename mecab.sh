#!/bin/bash
cd $(dirname $0)
mkdir $HOME/.dic > /dev/null 2>&1
cat ./mecab_bashrc.sh >> $HOME/.bashrc

#===== install mecab =====
sudo apt update
sudo apt install -y mecab libmecab-dev mecab-ipadic-utf8

#===== install neologd =====
cd $HOME/.tmp
git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git
cd mecab-ipadic-neologd
yes 'yes' | ./bin/install-mecab-ipadic-neologd -n

#===== igraph requirements =====
sudo apt install -y libxml2-dev zlib1g-dev build-essential python-dev
