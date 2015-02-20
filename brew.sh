#!/usr/bin/env zsh

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Packages
brew install boost --c++11 --with-icu

brew install assimp
brew install autoconf
brew install chicken
brew install chisel
brew install ctags
brew install eigen
brew install go
brew install leiningen
brew install libpng
brew install libyaml
brew install mcrypt
brew install openssl
brew install tbb --c++11
brew install unrar
brew install vim --override-system-vi --with-lua --with-python3
brew install yaml-cpp --C++11

# Packages - homebrew/versions
brew install homebrew/versions/glfw3

brew install rbenv
brew install ruby-build
brew install pyenv
brew install pyenv-virtualenv
brew install heroku-toolbelt

# Applications
brew install caskroom/cask/brew-cask
brew cask install android-studio
brew cask install carthage
brew cask install google-chrome
brew cask install java
brew cask install packer
brew cask install tower
brew cask install vagrant
brew cask install vmware-fusion
