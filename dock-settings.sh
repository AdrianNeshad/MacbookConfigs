#!/bin/bash

# Remove the delay when showing the hidden Dock
# Value is in seconds (float):
# 0.0 = No delay
# 0.5 = Half a second
# 1.0 = One second
# 2.0 = Two seconds
# You can use any decimal value, e.g. 0.2 or 0.75
defaults write com.apple.dock autohide-delay -float 0

# Restart the Dock to apply the changes
killall Dock

# To revert the change and restore the default macOS setting:
# defaults delete com.apple.dock autohide-delay
# killall Dock
