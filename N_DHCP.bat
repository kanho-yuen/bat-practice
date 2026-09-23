@echo off


set "NIC=Ethernet 3"

echo Changing the address of %NIC% to use DHCP
echo .
echo ..
echo ...
netsh interface ipv4 set address name="%NIC%" source=dhcp
echo Completed

echo Changing the DNS settings of %NIC% to use DHCP
echo .
echo ..
echo ...
netsh interface ipv4 set dnsserver name="%NIC%" source=dhcp
echo Completed

echo Please find the below for further verification
echo.
echo.
ipconfig /all > ipconfig.txt

echo This is the end of this bat


pause