#!/usr/bin/env bash

set -e

# NVM (Nodejs-LTS)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# Rust (Rustup)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# uv-astral (Python pip replacement)
curl -LsSf https://astral.sh/uv/install.sh | sh

# Starship prompt
curl -sS https://starship.rs/install.sh | sh

# Typst
wget -qO typst.tar.xz https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz

sudo tar xf typst.tar.xz --strip-components=1 -C /usr/local/bin typst-x86_64-unknown-linux-musl/typst

typst --version

rm -rf typst.tar.xz


