#! /bin/sh

set -e

# Update system's package list
apt-get update -y

# Install packages used by NXT
apt-get install -y fbi
apt-get install -y vim
apt-get install -y libncurses5-dev
apt-get install -y libhiredis-dev
apt-get install -y libevent-dev
apt-get install -y git
apt-get install -y iperf mtr ntp ntpdate
apt-get install -y screen
apt-get install -y libcec-dev
apt-get install -y cec-utils
apt-get install -y lsof
apt-get install -y libjson-c-dev
apt-get install -y tcpdump
apt-get install -y imagemagick
apt-get install -y gstreamer1.0-tools
apt-get install -y openvpn
apt-get install -y rssh

# Install packages required by omxplayer
apt-get install -y ca-certificates binutils libasound2-dev libpcre3-dev libidn11-dev libboost-dev libfreetype6-dev libdbus-1-dev libssh-dev libsmbclient-dev gcc g++ sed pkg-config

# Install omxplayer
echo "Installing omxplayer  !!"
wget http://158.106.77.16/pi-4-archives/omxplayer-dist.tgz
tar -xzvf omxplayer-dist.tgz -C /
rm -rf omxplayer-dist.tgz

# Install NXT TS utilities
echo "Installing NXT TS utilities  !!"
wget http://158.106.77.16/pi-4-archives/ts-tools.tgz
tar -xzvf ts-tools.tgz -C /
rm -rf ts-tools.tgz

echo "NXT one time setup done !!"
