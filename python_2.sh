#!/bin/bash
cd $(dirname $0)

#===== pyenv =====
ver='3.7.0'
pyenv install $ver
pyenv global $ver

#===== pipenv =====
pip install pipenv

#===== library =====
git clone https://github.com/dr666m1/library_python_mygeo.git $WKDIR/library/python/mygeo
git clone https://github.com/dr666m1/library_python_myds.git $WKDIR/library/python/myds
