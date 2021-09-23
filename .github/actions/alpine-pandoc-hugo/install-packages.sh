#!/bin/sh

## Update TeX Live Manager
tlmgr update --self || exit 1

## Install extra packages for Beamer/Metropolis
tlmgr install beamertheme-metropolis pgfopts tcolorbox environ || exit 1

## Install extra packages for LaTeX conversion to .png
tlmgr install standalone filemod currfile || exit 1

## Install make and graphviz (dot)
apk --no-cache add make bash graphviz ghostscript || exit 1

## Install current Hugo
wget https://github.com/gohugoio/hugo/releases/download/v0.87.0/hugo_0.87.0_Linux-64bit.tar.gz && tar -zxf hugo_*.tar.gz -C /usr/bin/ && rm hugo_*.tar.gz  || exit 1
