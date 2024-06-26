#!/bin/bash

echo "move dock to right"
defaults write com.apple.dock "orientation" -string "right" && killall Dock

# textedit is plaintext
defaults write com.apple.TextEdit RichText -int 0

# dont launch itunes for media keys
#launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

echo "disable time machine"
hash tmutil &> /dev/null && sudo tmutil disablelocal

# disable iCloud
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# disable Captive Portal
#defaults write /Library/Preferences/SystemConfiguration/com.apple.captive.control Active -bool false

echo "save to disk instead of icloud"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# home is default Finder location
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

# play sound on charger connection
defaults write com.apple.PowerChime ChimeOnAllHardware -bool true && \
open /System/Library/CoreServices/PowerChime.app

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
# Possible values: `WhenScrolling`, `Automatic` and `Always`

# create screenshots as jpg
defaults write com.apple.screencapture type jpg; killall SystemUIServer

echo "silence boot sound"
sudo nvram SystemAudioVolume=" "

# right-click bottom-right
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true

# icons spacing in menubar
defaults -currentHost write -globalDomain NSStatusItemSpacing -int 6
defaults -currentHost write -globalDomain NSStatusItemSelectionPadding -int 12
