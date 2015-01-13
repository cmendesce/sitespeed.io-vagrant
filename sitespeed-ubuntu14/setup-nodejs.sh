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
  echo "sitespeed.io --version" >> ~/.bashrc
  echo "chromedriver --version" >> ~/.bashrc
  echo "google-chrome-stable --version" >> ~/.bashrc
  # Starting Firefox will get us this message
  # GLib-CRITICAL **: g_slice_set_config: assertion 'sys_page_size == 0' failed
  # https://bugzilla.mozilla.org/show_bug.cgi?id=833117
  # echo "firefox -version"
fi
