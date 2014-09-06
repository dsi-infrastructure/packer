cat /etc/dhcp/dhclient.conf | sed -e "s/^#timeout 60/timeout 2/" > /tmp/dhclient.conf && cat /tmp/dhclient.conf > /etc/dhcp/dhclient.conf
