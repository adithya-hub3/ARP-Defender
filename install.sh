#/usr/bin/env bash

if [ $USER = "root" ] ;then 

	mkdir /opt/APP_arp

	cp arp_demo.py /opt/APP_arp/
	
	cp run.sh /opt/APP_arp/
	
	cp icon.png /opt/APP_arp/
	
	cp ARP-Defender.desktop /opt/APP_arp

	cp arp.service /etc/systemd/system/
	
	cp README.md /opt/APP_arp/

	systemctl enable arp
	systemctl start arp
	
	echo "Application installed successfully..."

else
	echo "This script needs root Permission .. run it as sudo user please .."
fi
echo "Hello User!"
exit 0



