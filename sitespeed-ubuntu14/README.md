# Install sitespeed.io on Ubuntu 14 [64-bit]

Run ```vagrant up``` and it will install the following:
* sitespeed.io
* Chrome & the chromedriver
* Firefox
* Xvfb
* node

## Run and fetch timings using Chrome
```bash
xvfb-run --server-args="-screen 0 1024x768x24" sitespeed.io -u http://www.sitespeed.io -b chrome
```

## Run and fetch timings Firefox
```bash
xvfb-run --server-args="-screen 0 1024x768x24" sitespeed.io -u http://www.sitespeed.io -b firefox
```

Read more about Xvfb:
http://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml
