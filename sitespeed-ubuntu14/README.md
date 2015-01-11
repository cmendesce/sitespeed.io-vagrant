# Install sitespeed.io on Ubuntu 14 64 b

Will install the following:
* sitespeed.io
* Chrome & the chromedriver
* Firefox
* Xvfb
* node

## Run using Chrome
xvfb-run --server-args="-screen 0 1024x768x24" sitespeed.io -u http://www.sitespeed.io -b chrome

## Run using Firefox
xvfb-run --server-args="-screen 0 1024x768x24" sitespeed.io -u http://www.sitespeed.io -b firefox
