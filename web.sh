#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

brew install node
brew install deno
brew install hugo

# Remove outdated versions from the cellar.
brew cleanup

# working with npm
npm install -g yarn
npm install -g npx
npm install -g np
npm install -g npm-name-cli

# web
npm install -g express-generator
npm install -g yo

# debugging
npm install -g ndb

# general utilities
npm install -g tldr
npm install -g now
npm install -g spoof
npm install -g fkill-cli
npm install -g castnow
npm install -g github-is-starred-cli
npm install -g vtop
npm install -g grunt-cli
npm install -g jshint
npm install -g pm2 
npm install -g react-native-cli

# linting
npm install -g eslint
npm install -g babel-eslint
npm install -g eslint-config-standard
npm install -g eslint-config-standard-react
npm install -g eslint-config-standard-jsx
npm install -g eslint-plugin-react
npm install -g eslint-config-prettier
npm install -g eslint-plugin-prettier
npm install -g prettier
npm install -g standard
npm install -g typescript
