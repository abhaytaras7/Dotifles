#!/usr/bin/bash

echo "Starting setup ************************ " 

cd ~

git clone https://github.com/abhaytaras7/Dotifles.git 


sudo rm -rf /etc/apt/sources.list

sudo mv ~/Dotifles/sources.list /etc/apt/sources.list

echo " changing repo mirrors "
sleep 4

sudo apt update -y && sudo apt upgrade -y 


sudo apt install lolcat neovim neofetch htop cmake make golang php clang -y

sudo apt install flameshot obs-studio ffmpeg -y 



echo " **** Wait ........................ **** "
sleep 2

echo "****Doing things *** "


sudo mv ~/Dotifles/Allfonts/*  ~/.local/share/fonts/

sudo mv idea.svg /usr/share/icons/

sudo mv kirta.png /usr/share/icons/



sudo mv ~/Dotifles/.zshrc ~
sudo mv ~/Dotifles/.tmux.conf ~

sudo tmux source-file .tmux.conf

echo " **** Wait ........................ **** "
sleep 2 

echo "****Doing things Again !!  *** "


source ~/.zshrc

sleep 2
echo " Beep beep "

echo " ############################# Completed  ********** #########################"



