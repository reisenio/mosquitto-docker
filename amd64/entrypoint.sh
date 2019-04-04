#!/bin/bash

mkdir -p /data/{etc,var,log}

if [ ! -f /data/etc/mosquitto.conf ]; then
	cp -Rp /etc/mosquitto/* /data/etc/
fi

> /data/log/mosquitto.log

chown -R mosquitto:root /data/var
chown -R mosquitto:root /data/log

rm -Rf /var/lib/mosquitto /var/log/mosquito /etc/mosquitto

ln -s /data/etc /etc/mosquitto 
ln -s /data/log/mosquitto.log /var/log/mosquitto/mosquitto.log
ln -s /data/var /var/lib/mosquitto

/usr/sbin/mosquitto -c /etc/mosquitto/mosquitto.conf
