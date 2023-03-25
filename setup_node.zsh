#!/usr/bin/env zsh

echo "\n<<< Starting Node setup >>>\n"

if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node & NPM with nvm"
  nvm install 16
  nvm use 16
  nvm alias defualt 16
fi

npm install --global yarn

echo "Global packages installed currently"
npm list --global
