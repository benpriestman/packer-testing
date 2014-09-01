#!/bin/bash

# OS-depnendent
sudo apt-get -yq install linux-headers-$(uname -r) build-essential dkms

# Install guest additions
VBOX_VERSION=$(cat ~/.vbox_version)
cd /tmp
mount -o loop ~/VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf ~/VBoxGuestAdditions_*.iso
