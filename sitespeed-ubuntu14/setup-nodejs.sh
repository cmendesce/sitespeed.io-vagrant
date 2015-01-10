#!/bin/bash
set -e

if [ ! -d $HOME/.nvm ]
  then
  # Install node
  curl https://raw.githubusercontent.com/creationix/nvm/v0.22.0/install.sh | sh
  source $HOME/.nvm/nvm.sh
  nvm install stable

  # Install sitesped.io
  npm install -g sitespeed.io

  # lets hope node gets installed ok
  echo "nvm use stable" >> ~/.bashrc
  # echo "/usr/bin/Xvfb :99 -ac -screen 0 1024x768x8 &" >> ~/.bashrc
fi
