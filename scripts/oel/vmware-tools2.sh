ISO_MOUNT="/media"
VMWARE_INSTALL_PL="/tmp/vmware/vmware-tools-distrib/vmware-install.pl"
VMWARE_REQUIRED_PACKAGES="build-essential"
VMWARE_TOOLS_TMP="/tmp/vmware"
VMWARE_TOOLS_ISO="/home/sysadmin/linux.iso"

echo "Installing virtual machine tools for ${PACKER_BUILDER_TYPE}"

echo "Mounting ${VMWARE_TOOLS_ISO} onto ${ISO_MOUNT}"
mount -o loop ${VMWARE_TOOLS_ISO} ${ISO_MOUNT}

echo "Extracting VMWare Tools to /tmp/vmware"
mkdir -p ${VMWARE_TOOLS_TMP}

echo "Extracting ${ISO_MOUNT}/VMwareTools-*.tar.gz to ${VMWARE_TOOLS_TMP}"
tar xzf ${ISO_MOUNT}/VMwareTools-*.tar.gz -C ${VMWARE_TOOLS_TMP}

echo "Unmounting ${VMWARE_TOOLS_ISO} from ${ISO_MOUNT}"
umount ${ISO_MOUNT}

echo "Running ${VMWARE_INSTALL_PL}"
${VMWARE_INSTALL_PL} -d

echo "Cleaning up ${VMWARE_TOOLS_ISO} and ${VMWARE_TOOLS_TMP}"
rm ${VMWARE_TOOLS_ISO}
rm -rf ${VMWARE_TOOLS_TMP}