#!/bin/bash

sudo apt-add-repository ppa:pdoes/ppa
sudo apt-add-repository ppa:webupd8team/sublime-text-3
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get -y install git git-svn gitk git-gui subversion  libsvn-dev libsvn-java libsvn1 libsvnclientadapter-java libsvnkit-java librxtx-java avrdude vim
sudo apt-get -y install sublime-text-installer vim
sudo npm -g install grunt-cli yo bower

sudo apt-get dist-upgrade
