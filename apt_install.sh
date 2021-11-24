#!/bin/bash

echo "Starting apt installs ⚙️"

sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

install curl
install git
install vim
install htop
install tree
install dropbox
install octave
install software-properties-common 
install apt-transport-https 
install wget

install gnome-tweaks
install chrome-gnome-shell
install gnome-shell-extensions

# Install chrome:
which google-chrome &> /dev/null

if [ $? -ne 0 ]; then
  echo "Installing: google-chrome..."
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo apt install ./google-chrome-stable_current_amd64.deb
  rm ./google-chrome-stable_current_amd64.deb    
else
  echo "Already installed: google-chrome"
fi


# Install VS code:
which code &> /dev/null

if [ $? -ne 0 ]; then
  echo "Installing: VS code..."
  wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
  sudo apt update
  sudo apt install code  
else
  echo "Already installed: VS code"
fi
