#!/usr/bin/env bash

set -e

# NVM (Nodejs-LTS)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
nvm install --lts
npm install -g tree-sitter-cli

# Rust (Rustup)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install --locked typst-cli

# uv-astral (Python pip replacement)
curl -LsSf https://astral.sh/uv/install.sh | sh
