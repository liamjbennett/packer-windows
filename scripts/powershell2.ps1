
# $source = "http://download.microsoft.com/download/7/3/4/7345bb7d-0b07-40e8-9480-5b8c55b9c8b7/WindowsXP-KB926139-v2-x86-ENU.exe"
# $dest = "C:\WindowsXP-KB926139-v2-x86-ENU.exe"
$source = "http://download.microsoft.com/download/2/8/6/28686477-3242-4E96-9009-30B16BED89AF/Windows6.0-KB968930-x64.msu"
$dest = "C:\Windows6.0-KB968930-x64.msu"

Write-Output "downloading powershell v2" > C:\powershell_log.txt
$wc = New-Object System.Net.WebClient
$wc.DownloadFile($source, $dest)

Write-Output "installing powershell v2" >> C:\powershell_log.txt
# & "C:\WindowsXP-KB926139-v2-x86-ENU.exe" /passive /norestart
# C:\Windows\System32\wusa.exe  C:\Windows6.0-KB968930-x64.msu /quiet /forcerestart

# Nasty sleep to allow to install
Write-Output "sleeping while installing" >> C:\powershell_log.txt
#[System.Threading.Thread]::Sleep(10000)

#Write-Output "restarting" >> C:\powershell_log.txt
#shutdown.exe /r /t 00
