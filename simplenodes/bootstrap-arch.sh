#!/bin/bash

# Download files containing colon (:) under a non-shared file (windows error else)
pacman -Sy --noconfirm --cachedir /var/cache/pacman-colon --needed grub ethtool python nftables python-setuptools docker

# Bash prompt Gentoo version
cp /vagrant/gentoo-bashrc-2016.0 /etc/bash.bashrc
chmod 777 /etc/bash.bashrc
rm /root/.bashrc /home/vagrant/.bashrc

# Clean update
pacman -R vi --noconfirm
pacman -Su --noconfirm --needed vim docker docker-compose docker-machine git wget
#virtualbox virtualbox-host-modules-arch

# Setup Docker - starting and add user
mkdir -p /etc/docker/certs.d/docker-repo:5000
cp /vagrant/docker-repo/certs/domain.crt /etc/docker/certs.d/docker-repo\:5000/ca.crt
gpasswd -a vagrant docker

systemctl enable docker
systemctl restart docker
