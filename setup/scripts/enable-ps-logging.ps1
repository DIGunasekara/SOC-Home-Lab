# enable-ps-logging.ps1 — Enable PowerShell audit logging
# Run as Administrator on Windows 10 Target VM

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging" `
    /v EnableScriptBlockLogging /t REG_DWORD /d 1 /f

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging" `
    /v EnableModuleLogging /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging" `
    /v ModuleNames /t REG_MULTI_SZ /d "*" /f

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription" `
    /v EnableTranscripting /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription" `
    /v OutputDirectory /t REG_SZ /d "C:\PSTranscripts" /f

New-Item -ItemType Directory -Path C:\PSTranscripts -Force
auditpol /set /subcategory:"Process Creation" /success:enable
auditpol /set /subcategory:"Logon" /success:enable /failure:enable