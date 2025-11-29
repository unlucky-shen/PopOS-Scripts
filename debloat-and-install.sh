#!/usr/bin/env bash

set -e

# Debloat
sudo apt purge gnome-calculator gnome-calendar gnome-contacts gucharmap evince simple-scan nano* libreoffice* vim* firefox* popsicle* pop-shop* gnome-weather seahorse geary* gedit -y

# Essential Packages 
sudo apt install wget curl xclip unzip p7zip-full libarchive-tools flatpak htop openssh-client openssh-server fzf ripgrep fd-find zathura tmux gcc gfortran python3 r-base mesa-utils vulkan-tools libvulkan1 vulkan-validationlayers mesa-vulkan-drivers steam -y
