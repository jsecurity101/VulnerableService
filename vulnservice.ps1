New-Service -Name VulnerableService -BinaryPathName C:\vulernableservice\vulnservice.exe -Description vulnservice -DisplayName vulnservice -StartupType Automatic
cmd /c "icacls C:\vulernableservice\vulnservice.exe /t /grant Everyone:(OI)(CI)F"
cmd /c "sc sdset vulnerableservice D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;WD)(A;;CCLCSWLOCRRC;;;IU)(A;;CCLCSWLOCRRC;;;SU)"
start-service VulnerableService
