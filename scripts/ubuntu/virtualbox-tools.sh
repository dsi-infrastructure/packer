VERSION=$(cat /home/vagrant/.vbox_version)
ISO_MOUNT="/media"
VIRTUALBOX_INSTALL_RUN="$ISO_MOUNT/VBoxLinuxAdditions.run"
VIRTUALBOX_REQUIRED_PACKAGES="build-essential"
VIRTUALBOX_TOOLS_ISO="/home/vagrant/VBoxGuestAdditions_$VERSION.iso"

echo "Installing virtual machine tools for Ubuntu"

echo "Installing VIRTUALBOX Tools required packages ${VIRTUALBOX_REQUIRED_PACKAGES}"
apt-get install -y ${VIRTUALBOX_REQUIRED_PACKAGES}

echo "Mounting ${VIRTUALBOX_TOOLS_ISO} onto ${ISO_MOUNT}"
mount -o loop ${VIRTUALBOX_TOOLS_ISO} ${ISO_MOUNT}

echo "Running ${VIRTUALBOX_INSTALL_RUN}"
sh ${VIRTUALBOX_INSTALL_RUN}

echo "Unmounting ${VIRTUALBOX_TOOLS_ISO} from ${ISO_MOUNT}"
umount ${ISO_MOUNT}

echo "Cleaning up ${VIRTUALBOX_TOOLS_ISO}"
rm ${VIRTUALBOX_TOOLS_ISO}
apt-get autoremove --purge -y ${VIRTUALBOX_REQUIRED_PACKAGES}
