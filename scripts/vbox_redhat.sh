#!/bin/bash

# OS-depnendent
sudo apt-get -yq install linux-headers-$(uname -r) build-essential dkms

# Install guest additions
VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
cd /tmp
mount -o loop ~/VBoxGuestAdditions_$VBOX_VERSION.iso /media
sh /media/VBoxLinuxAdditions.run -d
umount /media
rm -rf ~/VBoxGuestAdditions_*.iso
