#!/bin/sh

uci delete network.wan

uci -q batch <<EOF
set network.wan=device
set network.wan.proto=static
set network.wan.device=eth0
set network.wan.ipaddr=192.168.1.11
set network.wan.netmask=255.255.255.0
set network.wan.gateway=192.168.1.1
add_list network.wan.dns=223.5.5.5
commit network
EOF
