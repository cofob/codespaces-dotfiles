#!/usr/bin/env bash

# Update system
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install curl wget gcc python3 zsh git -y

# Install poetry
curl -sSL https://install.python-poetry.org | python3 -
sudo mv ~/.local/bin/poetry /bin/poetry
sudo poetry config virtualenvs.create false
poetry config virtualenvs.create false

# If pyproject.toml exists, install it with poetry
if [ -f "pyproject.toml" ]; then
    # Globally install essential python packages
    sudo pip install black isort pytest mypy
    # Install all dependencies
    sudo poetry install
fi

# If setup.sh exists, execute it
if [ -f "setup.sh" ]; then
    . setup.sh
fi
