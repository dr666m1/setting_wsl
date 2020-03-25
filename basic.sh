#!/bin/bash
cd $(dirname $0)

#===== prepare =====
#=== environmet variables
read -p '
input your mail address
e.g. sample@example.com
: ' mail
read -p '
input your name
e.g. Harrison Ford
: ' name
read -p '
input main working directory
e.g. /mnt/c/Users/username/Documents
: ' wkdir
echo '#===== my environmet variables =====' >> ~/.bashrc
echo "export MAIL='$mail'" >> ~/.bashrc
echo "export NAME='$name'" >> ~/.bashrc
echo "export WKDIR='$wkdir'" >> ~/.bashrc

#=== symbolic link
read -p '
input download directory
e.g. /mnt/c/Users/username/DownLoads
: ' dldir
read -p '
input desktop directory
e.g. /mnt/c/Users/username/Desktop
: ' dtdir
ln -s $dldir $wkdir/downloads
ln -s $dtdir $wkdir/desktop

#===== path =====
echo "
[interop]
appendWindowsPath = false
" | sudo tee -a /etc/wsl.conf

#=== package manager
sudo apt update

#=== directory
mkdir ~/.tmp > /dev/null 2>&1
mkdir ~/.crontab > /dev/null 2>&1

#=== .bashrc
cat ./basic_bashrc.sh >> ~/.bashrc

#===== ssh =====
ssh-keygen -t rsa -C $mail
echo 'ServerAliveInterval 15' | sudo tee -a /etc/ssh/ssh_config
echo 'ServerAliveCountMax 3' | sudo tee -a /etc/ssh/ssh_config

##===== brew =====
#sudo apt -y install build-essential curl file git
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

#===== git =====
git config --global user.email $mail
git config --global user.name $name
git config --global core.editor nvim
git config --global color.ui auto

#===== bat =====
curl -L https://github.com/sharkdp/bat/releases/download/v0.12.1/bat_0.12.1_amd64.deb > ~/.tmp/bat_0.12.1_amd64.deb
sudo dpkg -i ~/.tmp/bat_0.12.1_amd64.deb

#===== exa =====
sudo apt install zip unzip
mkdir ~/.exa > /dev/null 2>&1
curl -L https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip > ~/.exa/exa-linux-x86_64-0.9.0.zip
unzip ~/.exa/exa-linux-x86_64-0.9.0.zip
mv ./exa-linux-x86_64 ~/.exa/exa

#===== starship =====
curl -fsSL https://starship.rs/install.sh | bash
