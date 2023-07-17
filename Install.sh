#!/data/data/com.termux/files/usr/bin/bash

# Project name : Termux-YTD
# Coded by: Khansaad1275 (You dont become a coder by just changing the credits)
# Github: https://github.com/khansaad1275/Termux-YTD
# Date : 14/4/2020


pkg install ffmpeg

TERMUX_HOME="/data/data/com.termux/files/home"

# Make sure we are up to date.
printf '\e[01;36mRetriving package lists and updating\e[0m\n'
apt-get update && apt-get upgrade -y

# If the storage directory does not exist run termux-setup-storage.
if [ ! -d "${TERMUX_HOME}/storage" ]; then
  printf '\e[0;36mRequesting acces to storage\e[0m\n'
  sleep 2
  termux-setup-storage
fi

# Create the output directory if needed.
if [ ! -d "${TERMUX_HOME}/storage/shared/Termux-video-converter" ]; then
  printf '\e[0;36mCreating output directory at "~/storage/shared/Termux-video-converter"\e[0m\n'
  sleep 2
  mkdir "${TERMUX_HOME}/storage/shared/Termux-video-converter"
fi

# Install the url opener.
printf '\e[0;36mInstalling Termux-YTD\e[0m\n'
mkdir -p "${TERMUX_HOME}/bin"
mv termux-url-opener "${TERMUX_HOME}/bin"
chmod +x "${TERMUX_HOME}/bin/termux-url-opener"
sleep 2

