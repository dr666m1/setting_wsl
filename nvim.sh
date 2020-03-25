#!/bin/bash
cd $(dirname $0)

#===== nvim =====
mkdir ~/.nvim
#brew install neovim
curl -L -o ~/.nvim/nvim_appimage https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x ~/.nvim/nvim_appimage
~/.nvim/nvim_appimage --appimage-extract
mv squashfs-root/ ~/.nvim/
git clone https://github.com/dr666m1/setup_nvim.git ~/.nvim/nvim
git clone https://github.com/dr666m1/setup_snippet.git ~/.nvim/snip

#===== dein =====
curl https://raw.githubusercontent.com/shougo/dein.vim/master/bin/installer.sh > ~/.tmp/dein_installer.sh
sh ~/.tmp/dein_installer.sh ~/.nvim/dein
pip install pynvim # deoplete

cat ./nvim_bashrc.sh >> ~/.bashrc
