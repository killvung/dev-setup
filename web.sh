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
brew install node deno hugo

# Remove outdated versions from the cellar.
brew cleanup

# working with npm
npm install -g yarn npx np npm-name-cli

# web
npm install -g express-generator yo

# debugging
npm install -g ndb

# general utilities
npm install -g tldr now spoof fkill-cli castnow github-is-starred-cli vtop grunt-cli jshint pm2 react-native-cli

# linting
npm install -g eslint babel-eslint eslint-config-standard eslint-config-standard-react eslint-config-standard-jsx eslint-plugin-react eslint-config-prettier eslint-plugin-prettier prettier standard typescript