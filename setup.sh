#! /bin/bash
sudo pacman -Syu
sudo pacman -S cups cups-pdf ghostscript gsfonts system-config-printer
sudo systemctl enable --now cups.service
sudo systemctl enable --now cups.socket cups.path
sudo systemctl status cups.service
