#!/usr/bin/env bash

set -e

# Configure Git
git config --global user.name "shen"
git config --global user.email "taufiqhaikal002@gmail.com"

# Generate SSH Key
ssh-keygen -t ed25519 -C "taufiqhaikal002@gmail.com"

# Start SSH Agent
eval "$(ssh-agent -s)"

# add SSH Key to Agent
ssh-add ~/.ssh/id_ed25519

# Display SSH public Key
cat ~/.ssh/id_ed25519.pub
