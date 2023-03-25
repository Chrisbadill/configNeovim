# Configuracion de respaldo de NEOVIM

Repositorio con configuracion personal de neovim con intrucciones en español para Instalar Neovim en Windows y en linux.
En esta configuracion se incluye los plugins siguientes:

- [Packer.nvim](https://github.com/wbthomason/packer.nvim)
- [Alpha-nvim](https://github.com/goolord/alpha-nvim)
- [LuaLine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [Mason.nvim](https://github.com/williamboman/mason.nvim)
- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) como explorador de archivos.
- [Nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Toumble.nvim](https://github.com/folke/trouble.nvim)

## Instalacion en windows
Para esta instalcion se debe usar `PowerShell`, y se deben seguir los pasos siguientes:

1. [Instalar chocolatey](#instalar-chocholatey)
2. [Instalar Neovim](#instalar-neovim)
3. [Clonar Configuracion](#clonar-configuracion)
4. [Instalar Packer.nvim](#instalar-packernvim)
5. [Configurar Mason](#configuar-mason)

### Instalar Chocholatey

Para instalar Chocolatey ejecutamos el siguinte codigo con `PowerShell` en modo administrador:

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

### Clonar Configuracion

Para esto se requiere tener `git` intalado en el sistema. Despues desde este repositorio extrar la configuracion de neovim para windows, es la que se encuentra en la carpeta de este repositorio llamada `windows`,solo el contenido se de debe copiar en la carpeta del sistema que se encuentra en la siguiente direccion:

```powershell
~\AppData\Local\nvim\
```

### Instalar Packer.nvim

Para instalar el complemento Packer.nvim debemos clonar su repositorio con el siguiente comando:

```powershell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

Para iniciar Packer debenmos ejecutar en Neovim en el modo Ex el comando `:PackerInstall` y despues `:PackerCompile` esto pondra a funcionar Packer instalara los packetes incluidos en la configuracion.

Mas informacion de [Packer](https://github.com/wbthomason/packer.nvim).

### Configurar Mason

Se usa para que Nvim reconosca los lenguages de programacion, requiere que se intalen servidores de leguage LSP para Neovim y esto se intalan con Mason. En neovim modo Ex ejecutamos el comando `:Mason` buscascamos el LSP y autocompletado para el lenguage que desemos (javascript, python, lua,  etc.),e instalamos los que deceemos.
Recordemos que la letra `i` es para instalar un servidor con Mason.


