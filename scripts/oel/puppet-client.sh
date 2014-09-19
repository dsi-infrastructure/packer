echo "Telechargement de la procedure d'inclusion du depot puppetlabs."
wget http://cdrom.srv.gov.pf/puppetlabs-release-wheezy.deb -O /root/puppetlabs-release-wheezy.deba

echo "Installation du paquet puppetlabs-release-wheezy."
dpkg -i /root/puppetlabs-release-wheezy.deb

echo "Mises a jour de la lise des paquets"
apt-get update

echo "Installation du client puppet."
apt-get -y install puppet
