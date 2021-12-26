#!/usr/bin/env bash
sudo python3 ~/bin/split_dns.py
sudo brew services start dnsmasq
sudo scutil << EOF
open
d.init
d.add ServerAddresses * 127.0.0.1
set State:/Network/Service/gpd.pan/DNS
quit
