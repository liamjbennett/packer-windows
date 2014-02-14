
REM Nasty delay to allow powershell v1 to be installed
timeout 20 > null

C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe a:\powershell2.ps1

timeout 10 > null

C:\Windows\System32\wusa.exe C:\Windows6.0-KB968930-x64.msu /quiet

timeout 10 > null

shutdown /r /t 00 