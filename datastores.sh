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

# Install data stores
brew install mysql postgresql redis elasticsearch

# Install MongoDB
# https://stackoverflow.com/questions/57856809/installing-mongodb-with-homebrew
brew tap mongodb/brew
brew install mongodb-community

# Install mysql workbench
brew install --cask --appdir="/Applications" mysqlworkbench
# Install pgadmin4
brew install --cask --appdir="/Applications" pgadmin4

# Remove outdated versions from the cellar.
brew cleanup
