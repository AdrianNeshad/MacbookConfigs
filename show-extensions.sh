#!/bin/bash

# Show all file extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Restart Finder to apply the changes
killall Finder

# To revert to the default macOS setting:
# defaults delete NSGlobalDomain AppleShowAllExtensions
# killall Finder
