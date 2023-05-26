#!/usr/bin/env bash

# Install direnv
#echo "Installing direnv..."
#curl -sfL https://direnv.net/install.sh | bash

# Install nix
#echo "Installing nix..."
#sudo install -d -m755 -o $(id -u) -g $(id -g) /nix
#curl -L https://nixos.org/nix/install | sh

# Copy dotfiles
#mkdir -p $HOME/.config/nix
#cp nix.conf $HOME/.config/nix/nix.conf
rm $HOME/.bashrc
cp .bashrc $HOME/

# Install poetry
curl https://install.python-poetry.org/ | bash

# Install pyenv
curl https://pyenv.run | bash
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

