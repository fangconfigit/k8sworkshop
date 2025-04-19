#!/bin/bash
# Linux Mint 22.1 Cinnam
# Install required packages
sudo apt-get install openssh-server -y
systemctl enable ssh
systemctl start ssh
sudo apt install xrdp xorgxrdp -y
echo env -u SESSION_MANAGER -u DBUS_SESSION_BUS_ADDRESS cinnamon-session>~/.xsession