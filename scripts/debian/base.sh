apt-get update
apt-get -y upgrade
apt-get -y install linux-headers-$(uname -r)

grep -q 'secure_path' /etc/sudoers || sed -i -e '/Defaults\s\+env_reset/a Defaults\tsecure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"' /etc/sudoers

cat /etc/sudoers

grep -qs autocd /root/.bashrc || echo "shopt -s autocd\nalias l='ls -al'" >>/root/.bashrc

echo "UseDNS no" >> /etc/ssh/sshd_config