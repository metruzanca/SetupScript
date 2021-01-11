# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Brew Formulaes
brew install \
## Core
zsh \
fd \
ytop \
wget
## Development CLIs
gh \ # github cli
yarn \
## CLI Apps
neofetch \ # Super important piece of software
speedtest-cli \
syncthing \
"" # Used to allow trailing back-slashes

# FIXME i forget if you need to install cask as an extension to brew or not
# Install Brew Casks
brew install --cask \
## General Apps
google-chrome \
nordvpn \
spotify \
vlc \
webtorrent \
## Communication Apps
discord \
element \
signal \
telegram \
slack \
## Productivity Apps
evernote \
notion \
ticktick \
toggl-track \
flux \
## Development Tools & Apps
docker \
hyper \
font-fira-code \
postman \ # Look into using insomnia instead
## Utilities
appcleaner \
rectangle \
the-unarchiver \
"" # Used to allow trailing back-slashes

# TODO XCODE tools etc
# TODO XCODE tools that break on catalina with nodegyp