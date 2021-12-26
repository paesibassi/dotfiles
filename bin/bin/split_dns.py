#!/usr/bin/env python

import os
import subprocess
import sys

WIRELESS_INTERFACE = 'en0'	# could be different on other systems
TUNNEL_INTERFACE = 'gpd0'
VPN_NETS = [
    '10',				# subnets which should use VPN
]
VPN_HOSTS = []

def main():
    if os.getuid() != 0:
        sys.exit('Please, run this command with sudo.')
    gateway = None
    out = subprocess.check_output(('netstat', '-nrf', 'inet'))
    routes = out.decode('utf-8').split('\n')[3:]
    for route in routes:
        route = route.split()
        interface = route[3]
        if interface == WIRELESS_INTERFACE:
            gateway = route[1]
            break
    if gateway is None:
        sys.exit('Unable to determine VPN default gateway.')
    print('Resetting routes with gateway ' + gateway)
    subprocess.call(('route', '-n', 'delete', 'default', '-ifscope', WIRELESS_INTERFACE))
    subprocess.call(('route', '-n', 'delete', '-net', 'default', '-iface', TUNNEL_INTERFACE))
    subprocess.call(('route', '-n', 'add', '-net', 'default', gateway))
    print('\nAdding routes for addresses which should go through VPN.')
    for addr in VPN_NETS:
        subprocess.call(('route', '-n', 'add', '-net', addr, '-iface', TUNNEL_INTERFACE))
    for addr in VPN_HOSTS:
        subprocess.call(('route', '-n', 'add', '-host', addr, '-iface', TUNNEL_INTERFACE))
if __name__ == '__main__':
    main()

