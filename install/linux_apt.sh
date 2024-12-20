#!/usr/bin/env bash

# Ask for sudo upfront
echo "Need to sudo to continue..."
sudo -v

# Make sure we update to latest before we do anything
sudo apt-get update
sudo apt-get upgrade

# Install video tools
sudo apt-get install vlc vlc-plugin-notify
sudo apt-get install ffmpeg
sudo apt-get install x264

# Install font stuff
sudo apt-get install woff2 woff-tools sfnt2woff-zopfli

# Other useful binaries
sudo apt-get install ack
sudo apt-get install git-lfs
sudo apt-get install 7zip
sudo apt-get install tree
sudo apt-get install vbindiff
sudo apt-get install zopfli

# Tools
sudo apt-get install zsh
sudo apt-get install cmake
sudo apt-get install protobuf-compiler
sudo apt-get install tmux
sudo snap install zig --classic --beta

# Random
sudo snap install spotify
sudo snap install obsidian
