#!/bin/bash


set -e

# First let's update the system
apt update && apt upgrade -y

# Install nala to use instead of apt
apt install nala -y

# List of the programs to install
packages=(
  "nmap"
  "aircrack-ng"
  "hashcat"
  "crunch"
  "bully"
  "hcxtools"
  "wifite"
  "calibre"
  "kleopatra"
  "scdaemon"
  "ksystemlog"
  "deluge"
  "digikam"
  "showfoto"
  "htop"
  "timeshift"
  "synaptic"
  "wireshark"
  "flatpak"
)

# Install the packages
for package in "${packages[@]}"; do
  nala install $package -y
done

# Uninstall firefox-esr
nala purge firefox-esr

flatpak_packages=(
    "firefox"
    "spotify"

)
# Installing the flatpak packages
for package in "${flatpak_packages[@]}"; do
  flatpak install $package -y
done


# Print a success message
echo "All packages installed successfully!"