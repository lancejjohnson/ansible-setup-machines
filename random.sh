#!/usr/bin/env bash

# Some things I want to do automated but haven't figured out in ansible

gsettings set org.gnome.desktop.input-sources xkb-options "['caps:ctrl_modifier']"

gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false
