#!/usr/bin/env bash

# Copy dotfiles
rm $HOME/.bashrc
cp .bashrc $HOME/

# Install sudo
apt-get update
apt-get install sudo -y

# Install direnv
echo "Installing direnv..."
curl -sfL https://direnv.net/install.sh | bash

# If pyproject.toml exists, install it with poetry
if [ -f "pyproject.toml" ]; then
    echo "Installing poetry deps..."
    # Install all dependencies
    poetry install
fi
