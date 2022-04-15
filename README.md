# nvim-files

Node JS must be installed:

[NodeJS](https://nodejs.org/en/)


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

#Directions

Make sure that packer is installed:

```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

Then run:
```
:PackerInstall
```

Once Packer has finished install coc:

```
:CocInstall coc-json coc-tsserver:w
```

Install a nerdfont, personal fav (HasKlug):

[Download]("https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hasklig/Regular/complete/Hasklug%20Nerd%20Font%20Complete.otf")

Airline may not have arrows so run the following lines:
```
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```
