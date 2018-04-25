#!/bin/bash

# Initial announcement!
echo "Provisioning virtual machine..."

# Update sources
sudo apt-get update -y

# Remove old packages
sudo apt-get autoremove

# Install Git
# Git
echo "Installing GIT"
sudo apt-get install git-core -y
git config --global color.ui true

# cURL
echo "Installing cURL"
sudo apt-get install curl -y

# htop
echo "Installing hTop"
sudo apt-get install htop -y


# Development tools
echo "Installing development tools"
sudo apt-get install build-essential -y

# Packages required for compilation of some stdlib modules
echo "Installing stdlib modules"
sudo apt-get install tklib -y

# Node.js
echo "Installing Node.js"
sudo apt-get install nodejs -y

# Vim
echo "Installing VIM"
sudo apt-get install vim -y
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
