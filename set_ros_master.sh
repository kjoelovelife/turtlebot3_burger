#!/usr/bin/env bash
echo "Setting ROS_MASTER_URI..."
if [ $# -gt 0 ]; then
	# provided a hostname, use it as ROS_MASTER_URI
	export ROS_MASTER_URI=http://$1.local:11311/
else
	echo "No hostname provided. Using $HOSTNAME."
	export ROS_MASTER_URI=http://$HOSTNAME.local:11311/
fi
IP=`ifconfig | grep 'inet addr:' | grep -v '127.0.0.1' | cut -d: -f2 | awk {'print $1'}`
export ROS_HOSTNAME=$IP
echo "ROS_MASTER_URI set to $ROS_MASTER_URI"
echo "ROS_HOSTNAME set to $IP"
