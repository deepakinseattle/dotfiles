# Dock
# https://macos-defaults.com/dock/
defaults write com.apple.dock "orientation" -string "right"
defaults write com.apple.dock "tilesize" -int "48" # Default Value
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "show-recents" -bool "false"
defaults write com.apple.dock "mineffect" -string "scale"

# Screenshots
# https://macos-defaults.com/screenshots/
defaults write com.apple.screencapture "location" -string "~/Desktop/Screenshots"

# Finder
# https://macos-defaults.com/finder/
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "ShowPathbar" -bool "true"
