#!/bin/bash
cp ~/.intelxinitrc ~/.xinitrc
sudo rm /etc/X11/xorg.conf.d/10*
sudo cp /etc/X11/xorg.conf.d/intel.conf /etc/X11/xorg.conf.d/10-intel.conf
