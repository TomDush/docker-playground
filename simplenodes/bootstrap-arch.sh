#!/bin/bash

# Download files containing colon (:) under a non-shared file (windows error else)
pacman -Sy --noconfirm --cachedir /var/cache/pacman-colon --needed grub ethtool python nftables python-setuptools docker

# Bash prompt Gentoo version
cp /vagrant/gentoo-bashrc-2016.0 /etc/bash.bashrc
chmod 777 /etc/bash.bashrc
rm /root/.bashrc /home/vagrant/.bashrc

# Clean update
pacman -R vi --noconfirm
pacman -Su --noconfirm --needed vim docker docker-compose docker-machine virtualbox virtualbox-host-modules-arch git wget