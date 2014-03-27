#!/bin/bash

sudo apt-add-repository ppa:chris-lea/node.js

sudo apt-get update
sudo apt-get install nodejs npm

sudo npm -g install yo grunt-cli bower