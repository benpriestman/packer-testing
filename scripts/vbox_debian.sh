#!/bin/bash

# OS-depnendent
sudo apt-get -yq install linux-headers-$(uname -r) build-essential dkms

# Install guest additions
mount -o loop ~/VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run install --force
umount /mnt
rm -rf ~/VBoxGuestAdditions_*.iso
