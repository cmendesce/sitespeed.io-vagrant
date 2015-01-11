#!/bin/bash
set -e

if [ ! -f /etc/root_provisioned_at ]
  then
  # Add Google public key to apt, needed to get Chrome
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

  # Add Google to the apt-get source list, needed to get Chrome
  sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

  # Update
  apt-get update

  # Install git, curl, java, firefox, chrome, unzip, xvfb
  apt-get -y install git curl default-jre-headless firefox google-chrome-stable unzip xvfb

  # Extras for xvfb
  apt-get install -y libgl1-mesa-dri xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic

  # Now fetch the chrome driver
  wget -N http://chromedriver.storage.googleapis.com/2.13/chromedriver_linux64.zip
  unzip chromedriver_linux64.zip
  rm chromedriver_linux64.zip
  chmod +x chromedriver
  mv -f chromedriver  /usr/bin/chromedriver

  date > /etc/root_provisioned_at
fi
