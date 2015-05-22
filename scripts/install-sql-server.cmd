@echo off

echo Installing SQL Server 2012 Express, it will take a while...
C:\vagrant\SQLEXPRWT_x64_ENU.exe /Q /Action="Install" /IACCEPTSQLSERVERLICENSETERMS /INSTANCENAME="SQLEXPRESS" /INSTANCEID="SQLExpress" /FEATURES=SQL,Tools /TCPENABLED=1 /SECURITYMODE="SQL" /SAPWD="#SAPassword!"

echo Disabling firewall
netsh advfirewall set allprofiles state off
