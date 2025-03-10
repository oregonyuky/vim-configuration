#!/bin/bash
set -eo pipefail

has() {
  [[ -x "$(command -v "$1")" ]];
}

has_not() {
  ! has "$1" ;
}

ok() {
  echo "→ "$1" OK"
}
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y \
    git git-core \
    vim \
    curl 

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ok "System updated!"
ok "Git"
ok "Vim"
ok "curl"

if has_not pip; then
  sudo apt-get install python-pip python-dev build-essential
  sudo pip install --upgrade pip
  sudo pip install --upgrade virtualenv
fi
ok "GCC"

if ! [[ -d "$HOME/.nvm" ]]; then
  NODE_VERSION=4
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
  source ~/.bashrc
  nvm install $NODE_VERSION
  nvm use $NODE_VERSION
  nvm alias default $NODE_VERSION
fi
ok "NVM"

npm i -g nodemon hmh-cli clima
ok "NodeJS global modules"

sudo apt update
sudo apt install openjdk-11-jdk -y
ok "Java"

sudo apt install bundle
