#!/bin/bash
# Update
apt update -y
apt-get update -y

# Upgrade
apt upgrade -y
apt-get upgrade -y 
apt dist-upgrade -y

# Autoremove
apt autoremove -y
apt-get autoremove -y

# Clean
apt clean -y
apt-get clean -y
sleep 2
