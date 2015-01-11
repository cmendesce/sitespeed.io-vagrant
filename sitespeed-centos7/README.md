# Install sitespeed.io on CentOS 7 [64-bit]

Work in progress ...

Will install the following:
* sitespeed.io
* Firefox
* Xvfb
* node

## Run using Firefox
```bash
xvfb-run --server-args="-screen 0 1024x768x24" sitespeed.io -u http://www.sitespeed.io -b firefox
```

Read more about Xvfb:
http://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml
