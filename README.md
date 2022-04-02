# nvim-files

For windows (which is the only OS I have used this for) clone this repo into:

```
AppData/Local/
```

This is for a Windows upload, clone into the following dir:

```
cd ~/appdata/local/
```

Things to install:

Chocolatey (do it in admin powershell)
```
 Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Rg:
```
choco install ripgrep
```
