#!/bin/sh

## Update TeX Live Manager
tlmgr update --self || exit 1

## Install extra packages for Beamer/Metropolis
tlmgr install beamertheme-metropolis pgfopts tcolorbox environ || exit 1

## Install extra packages for LaTeX conversion to .png
tlmgr install standalone filemod currfile mathtools gincltex svn-prov adjustbox collectbox || exit 1

## Install make and graphviz (dot)
apk --no-cache add make bash zip graphviz ghostscript font-noto || exit 1

## Install current Hugo (linux/64bit/tgz)
## https://github.com/gohugoio/hugo/releases/latest/
wget https://github.com/gohugoio/hugo/releases/download/v0.96.0/hugo_0.96.0_Linux-64bit.tar.gz && tar -zxf hugo_*.tar.gz -C /usr/bin/ && rm hugo_*.tar.gz  || exit 1
