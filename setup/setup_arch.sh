#/bin/bash


pacstrap /mnt base linux linux-firmware

arch-chroot /mnt

# Set time zone
ln -sf /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime

# Generate /etc/adjtime
hwclock --systohc

# Localisation
LOCALE_GEN="/etc/locale.gen"
echo "-----------------------" >> $LOCALE_GEN
echo "#Begin setup locale.gen" >> $LOCALE_GEN
echo "en_US.UTF-8 UTF-8" >> $LOCALE_GEN
echo "vi_VN UTF-8" >> $LOCALE_GEN
LOCALE_CONF="/etc/locale.conf"
echo "LANG=en_US.UTF-8" >> $LOCALE_CONF

# Setup hostname
echo "net12k44-pc" >> /etc/hostname

pacman -S sudo






