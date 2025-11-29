#!/usr/bin/env bash

set -e

# Neovim Unstable PPA
sudo add-apt-repository ppa:neovim-ppa/unstable

# Spotify Official Repo
curl -sS https://download.spotify.com/debian/pubkey_5384CE82BA52C83A.asc | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg

echo "deb https://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update && sudo apt-get install spotify-client -y

sudo apt install neovim -y
