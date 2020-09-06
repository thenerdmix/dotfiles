#!/bin/bash
cp ~/.nvidiaxinitrc ~/.xinitrc
sudo rm /etc/X11/xorg.conf.d/10*
sudo cp /etc/X11/xorg.conf.d/nvidia.conf /etc/X11/xorg.conf.d/10-nvidia.conf
