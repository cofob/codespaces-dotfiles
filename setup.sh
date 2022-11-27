#!/usr/bin/env bash

# Copy dotfiles
rm $HOME/.bashrc
cp .bashrc $HOME/

# Install direnv
echo "Installing direnv..."
curl -sfL https://direnv.net/install.sh | bash

# If pyproject.toml exists, install it with poetry
if [ -f "pyproject.toml" ]; then
    echo "Installing poetry..."
    # Install poetry
    curl -sSL https://install.python-poetry.org | python3 -
    sudo mv ~/.local/bin/poetry /bin/poetry
    sudo poetry config virtualenvs.create false
    poetry config virtualenvs.create false
    # Install all dependencies
    sudo poetry install
fi
