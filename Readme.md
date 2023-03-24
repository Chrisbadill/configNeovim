# Configuracion de respaldo de NEOVIM

Contienen toda la configuracion de neovim como un respaldo para instalar en windows y en linux.



## Instalacion en windows
para esta instalcion se debe usar powershell

1. [Instalar chocolatey](#instalar-chocholatey)
2. [Instalar Neovim](#instalar-neovim)
3. [Clonar Configuracion](#clonar-configuracion)
4. [Instalar Packer.nvim](#instalar-packernvim)
5. [Configurar Mason](#configuar-mason)

### Instalar Chocholatey

Para instalar Chocolatey ejecutamos el sigueinte codigo con `PowerShell` en modo administrador:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Mas informacion en [https://chocolatey.org/](https://chocolatey.org/).

### Instalar Neovim

Para instalar Neovim usaremos el siguiten comando en powershell:

```powershell
choco install neovim
```

Mas informacion en [https://neovim.io/](https://neovim.io/).

## Clonar Configuracion

PENDIENTE

Desde este repositorio extrar la configuracion de neovim para windows

Agregarla el la carpeta del sistema

```powershell
~\AppData\Local\nvim\
```

### Instalar Packer.nvim

```powershell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

Ejecutar Neovim en el modo Ex el comando `:PackerInstall` y despues `:PackerCompile` esto pondra a funcionar Packer intalara los packetes incluidos en la configuracion

Mas informacion de [Packer](https://github.com/wbthomason/packer.nvim).

### Configurar Mason

Con el proposito de instalar servidores de lenguage para Neovim usaremos Mason. En neovim modo Ex ejecutamos el comando `:Mason` buscascamos el LSP y autocompletado para el lenguage que desemos (javascript, python, lua,  etc.), recordemos que la letra `i` es para instalar.


