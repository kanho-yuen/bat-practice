@echo off

netsh interface ipv4 set address "Ethernet 3" static 192.168.0.100 255.255.255.0 192.168.100.1

netsh interface ipv4 set dnsservers "Ethernet 3" static 8.8.8.8

netsh interface ipv4 add dnsservers "Ethernet 3" 1.1.1.1 index=2

pause / exit