# Запускаем Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force;
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));

# Массив с именами программ для установки

$programs = @('googlechrome','firefox', 'winrar', 'webstorm', 'vscode', 'deezer', 'zoom', 'nodejs', 'volta', 'slack', 'discord', 'telegram', 'git', 'mobaxterm')

foreach ($program in $programs) {
    choco install $program -y --force
}

# для запуска скриптов Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
