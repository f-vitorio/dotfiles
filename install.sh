#!/bin/bash


#-------------------------------------------------------
# script para instalação dos meus softwares linux

#-------------------------------------------------------




#update
sudo apt-get -f install
sudo apt-get update
sudo apt-get autoremove
sudo apt-get dist-upgrade
#git
sudo apt-get install git -y


#install vim
sudo apt install vim

#install vundle 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#instal skype
sudo snap install skype --classic

#Discord
sudo snap install discord

#install ebook reader
sudo apt install calibre
