#!/bin/bash
pacman -S xorg plasma plasma-wayland-session kde-applications --needed
pacman -S firefox chromium --needed
pacman -S ttf-freefont ttf-arphic-uming ttf-baekmuk ttf-dejavu --needed


systemctl enable sddm.service
systemctl enable NetworkManager.service

