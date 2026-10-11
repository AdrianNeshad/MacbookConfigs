#!/bin/bash

# Show the full path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Restart Finder to apply the changes
killall Finder

# To revert to the default macOS setting:
# defaults delete com.apple.finder ShowPathbar
# killall Finder
