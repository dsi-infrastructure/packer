#!/bin/bash

# Ceci permet d'aficher la console pour les images Openstack

cd /etc/default && cat grub | sed -e "s/quiet/console=ttyS0/" > /tmp/grub.tmp && cat /tmp/grub.tmp > /etc/default/grub  && update-grub