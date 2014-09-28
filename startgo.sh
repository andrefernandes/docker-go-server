#!/bin/bash
# if config exists on volume /opt/go/config
# erases image file and links to mounted config
if [ ! -f /opt/go/cruise-config.xml ]; then
 cp /etc/go/cruise-config.xml /opt/go/cruise-config.xml 
else
 chown go:go /opt/go/cruise-config.xml
fi
rm /etc/go/cruise-config.xml
ln -s /opt/go/cruise-config.xml /etc/go/cruise-config.xml
exec su -l go -c /usr/share/go-server/server.sh

