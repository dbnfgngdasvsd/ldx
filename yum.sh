#!/bin/bash
mkdir /mnt/yum
mount /dev/cdrom /mnt/yum || mount /dev/sr0 /mnt/yum
rm -rf /etc/yum.repos.d/*
echo "[myyum]
name=myyum
baseurl=file:///mnt/yum
enabled=1
gpgcheck=0" > /etc/yum.repos.d/myyum.repo
yum repolist

