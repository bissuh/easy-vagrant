#!/usr/bin/env bash

echo "Self update apt-get"
apt-get update

echo "Installing Yeoman and generators"
npm install -g yo node-inspector nodemon grunt-cli bower karma
npm install -g generator-webapp
npm install -g generator-angular

echo "Installing compass support"
gem update --system
gem install compass
npm install grunt-contrib-compass --save-dev

echo "Installing Node Monitor"
npm install -g nodemon

echo "Define your Github account"
git config --global user.name "Bissuh"
git config --global user.email "bissuh@gmail.com"
