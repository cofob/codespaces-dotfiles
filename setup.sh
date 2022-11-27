#!/usr/bin/env bash

# Install sudo
apt-get update
apt-get install sudo -y

# Install direnv
#echo "Installing direnv..."
#curl -sfL https://direnv.net/install.sh | bash

# Install nix
#echo "Installing nix..."
#sudo install -d -m755 -o $(id -u) -g $(id -g) /nix
#curl -L https://nixos.org/nix/install | sh

# If pyproject.toml exists, install it with poetry
if [ -f "pyproject.toml" ]; then
    echo "Installing poetry deps..."
    # Install all dependencies
    poetry install
fi

# Copy dotfiles
#mkdir -p $HOME/.config/nix
#cp nix.conf $HOME/.config/nix/nix.conf
rm $HOME/.bashrc
cp .bashrc $HOME/
