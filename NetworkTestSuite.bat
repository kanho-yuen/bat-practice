@echo off


set testip=google.com
set internetip=8.8.8.8
set testfilename=result.txt
set fqdn=google.com


echo This is the Network Test Suite to %testip%, using %internetip% for internet connectivity test > %testfilename%
echo Test date: %date% >>  %testfilename%
echo Test time: %time% >>  %testfilename%
echo. >>  %testfilename%
echo. >>  %testfilename%


echo Running whoami
echo ===== whoami ===== >> %testfilename%
whoami >> %testfilename%
echo.  >> %testfilename%
echo.  >> %testfilename%
echo Finished
echo.


echo Running hostname
echo ===== hostname ===== >> %testfilename%
hostname >> %testfilename%
echo.  >> %testfilename%
echo.  >> %testfilename%
echo Finished
echo.



echo Running systeminfo
echo ===== systeminfo ===== >> %testfilename%
systeminfo >> %testfilename%
echo.  >> %testfilename%
echo.  >> %testfilename%
echo Finished
echo.


echo Running ipconfig/all
echo ===== ipconfig /all ===== >> %testfilename%
ipconfig /all >> %testfilename%
echo.  >> %testfilename%
echo.  >> %testfilename%
echo Finished
echo.


echo Running ping %internetip%
echo ===== ping %internetip% ===== >> %testfilename%
ping %internetip% >> %testfilename%
echo.  >> %testfilename%
echo.  >> %testfilename%
echo Finished
echo.


::echo Running ping %testip%
::echo ===== ping %testip% ===== >> %testfilename%
::ping %testip% >> %testfilename%
::echo Finished


echo Running route print
echo ===== route print ===== >>  %testfilename%
route print >>  %testfilename%
echo.  >> %testfilename%
echo.  >> %testfilename%
echo Finished
echo.


echo Running tracert %testip%
echo ===== tracert %testip% ===== >> %testfilename%
tracert %testip% >> %testfilename%
echo.  >> %testfilename%
echo.  >> %testfilename%
echo Finished


echo ===== End of Report =====  >> %testfilename%
echo Generated Successfully >>  %testfilename%

notepad %testfilename%

exit