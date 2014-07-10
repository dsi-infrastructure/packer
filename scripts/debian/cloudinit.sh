# Wheezy backports.
echo 'deb http://repository.linux.pf/debian wheezy-backports main' >> /etc/apt/sources.list
apt-get update

# Install cloud-init.
apt-get install -y cloud-init