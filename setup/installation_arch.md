# Pre-installation

## Acquire an installation image
Visit the [Download](https://archlinux.org/download/) page and, depending on how you want to boot, acquire the ISO file or a netboot image, and the respective GnuGPG signature

## Verify Signature
`gpg --keyserver-options auto-key-retrieve --verify archlinux-version-x86_64.iso.sig`

## Create live device
Windows USB: https://rufus.ie/en/

Windows HardDisk: 
- Try https://unetbootin.github.io/
- UEFI: Create a FAT32 partition and copied the ISO there

## Boot the live environment
Arch Linux installation images do not support Secure Boot. You will need to disable Secure Boot to boot the installation medium.

## Verify the boot mode
To verify the boot mode, list the efivars directory:
```
ls /sys/firmware/efi/efivars
```
If the command shows the directory without error, then the system is booted in UEFI mode. If the directory does not exist, the system may be booted in BIOS (or CSM) mode. If the system did not boot in the mode you desired, refer to your motherboard's manual.

## Connect to the internet
Ensure your network interface is listed and enabled, for example with ip-link. (Run `ip link`).

Use `iwctl` to configure your wifi connection.

Verify the network using ping, for example `ping -c 3 google.com`.

## Update system clock
Use timedatectl to ensure the system clock is accurate: 
```
timedatectl set-ntp true
```
To check the service status, use `timedatectl status`. 

## Partition the disks (TBD)

## Format the partitions
```
mkfs.fat -F 32 /dev/efi_system_partition
mkfs.ext4 /dev/root_partition
mkswap /dev/swap_partition
```

## Mount the file systems
```
 mount /dev/root_partition /mnt
 swapon /dev/swap_partition
```


