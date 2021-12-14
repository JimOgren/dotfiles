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
install make 

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