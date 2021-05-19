#!/bin/bash

# Install VBOX guest Additions
mount /home/vagrant/VBoxGuestAdditions.iso -o loop /mnt
cd /mnt
./VBoxLinuxAdditions.run --nox11
