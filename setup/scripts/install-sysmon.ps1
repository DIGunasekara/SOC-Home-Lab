# install-sysmon.ps1 — Install Sysmon with SwiftOnSecurity config
# Run as Administrator on Windows 10 Target VM

New-Item -ItemType Directory -Path C:\Tools -Force
Invoke-WebRequest -Uri "https://download.sysinternals.com/files/Sysmon.zip" `
    -OutFile "C:\Tools\Sysmon.zip"
Expand-Archive -Path "C:\Tools\Sysmon.zip" -DestinationPath "C:\Tools\Sysmon" -Force
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/SwiftOnSecurity/sysmon-config/master/sysmonconfig-export.xml" `
    -OutFile "C:\Tools\sysmonconfig.xml"
Set-Location "C:\Tools\Sysmon"
.\Sysmon64.exe -accepteula -i "C:\Tools\sysmonconfig.xml"
Get-Service Sysmon64