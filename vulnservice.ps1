New-Service -Name VulnerableService -BinaryPathName C:\vulnerableservice\vulnservice.exe -Description VulnerableService -DisplayName VulnerableService -StartupType Automatic
cmd /c "icacls C:\vulnerableservice\vulnservice.exe /t /grant Everyone:(OI)(CI)F"
cmd /c "sc sdset VulnerableService D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;WD)(A;;CCLCSWLOCRRC;;;IU)(A;;CCLCSWLOCRRC;;;SU)"
start-service VulnerableService
