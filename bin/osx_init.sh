#!/bin/bash
# textedit is plaintext
defaults write com.apple.TextEdit RichText -int 0
# dont launch itunes for media keys
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist
# disable time machine
hash tmutil &> /dev/null && sudo tmutil disablelocal
# turn off sudden movement sensor
sudo pmset -a sms 0
# save to disk instead of icloud
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
# home is default Finder location
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"
# play sound on charger connection
defaults write com.apple.PowerChime ChimeOnAllHardware -bool true && \
open /System/Library/CoreServices/PowerChime.app
