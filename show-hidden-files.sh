#!/bin/bash

# Show hidden files and folders in Finder
defaults write com.apple.finder AppleShowAllFiles -bool true

# Restart Finder to apply the changes
killall Finder

# To hide hidden files again:
# defaults write com.apple.finder AppleShowAllFiles -bool false
# killall Finder
