#!/bin/bash
#Create and mount ramdisk to existing minecraft directory.
mount -t tmpfs -o size=24000M tmpfs /var/minecraft/minecraft
#Copy the minecraft installation to the ramdisk.
cp -R /var/minecraft/backup /var/minecraft/minecraft
#Start minecraft and resetting
systemctl start mcreset.service
#Start backup service
systemctl backup.service