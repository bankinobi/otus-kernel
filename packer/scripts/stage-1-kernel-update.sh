#!/bin/bash

# Install epel-release
yum install -y epel-release
# Install make dependencies
yum group install -y "Development Tools"
yum install -y dkms ncurses-devel bison flex elfutils-libelf-devel openssl-devel bc
# Download kernel archive
cd /usr/src/
curl https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.119.tar.xz -o linux-5.4.119.tar.xz
tar xvxf linux-5.4.119.tar.xz
# Build kernel
cd linux-5.4.119
cp /boot/config* .config
make olddefconfig
make -j `nproc`
make modules_install
make install
# Update GRUB
grub2-mkconfig -o /boot/grub2/grub.cfg
grub2-set-default 0
# Restart VM
shutdown -r now
