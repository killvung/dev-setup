#!/usr/bin/env bash

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

# Upgrade any already-installed formulae.
brew upgrade

# Core casks
brew install --cask --appdir="/Applications" alfred 
brew install --cask --appdir="/Applications" xquartz

# Development tool casks
brew install --cask --appdir="/Applications" sublime-text 
brew install --cask --appdir="/Applications" visual-studio-code 
brew install --cask --appdir="/Applications" virtualbox 
brew install --cask --appdir="/Applications" vagrant

# Misc casks
brew install --cask --appdir="/Applications" firefox 
brew install --cask --appdir="/Applications" google-chrome 
brew install --cask --appdir="/Applications" spotify 
brew install --cask --appdir="/Applications" skype 
brew install --cask --appdir="/Applications" zoomus 
brew install --cask --appdir="/Applications" slack 
brew install --cask --appdir="/Applications" discord 
brew install --cask --appdir="/Applications" dropbox 
brew install --cask --appdir="/Applications" google-backup-and-sync 
brew install --cask --appdir="/Applications" evernote 
brew install --cask --appdir="/Applications" steam 
brew install --cask --appdir="/Applications" 1password 
brew install --cask --appdir="/Applications" gimp 
brew install --cask --appdir="/Applications" inkscape 
brew install --cask --appdir="/Applications" android-file-transfer 
brew install --cask --appdir="/Applications" docker 
brew install --cask --appdir="/Applications" unshaky 
brew install --cask --appdir="/Applications" iina
brew install --cask --appdir="/Applications" veracrypt

# Jetbrain products
brew install --cask --appdir="/Applications" intellij-idea 
brew install --cask --appdir="/Applications" pycharm 
brew install --cask --appdir="/Applications" clion

# Install Android dev
brew install --cask --appdir="/Applications" android-studio
brew install android-sdk

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew install --cask --appdir="/Applications" qlcolorcode 
brew install --cask --appdir="/Applications" qlstephen 
brew install --cask --appdir="/Applications" qlmarkdown 
brew install --cask --appdir="/Applications" quicklook-json 
brew install --cask --appdir="/Applications" qlprettypatch 
brew install --cask --appdir="/Applications" quicklook-csv 
brew install --cask --appdir="/Applications" betterzip 
brew install --cask --appdir="/Applications" qlimagesize 
brew install --cask --appdir="/Applications" webpquicklook 
brew install --cask --appdir="/Applications" suspicious-package 
brew install --cask --appdir="/Applications" quicklookase 
brew install --cask --appdir="/Applications" qlvideo

# Remove outdated versions from the cellar.
brew cleanup
