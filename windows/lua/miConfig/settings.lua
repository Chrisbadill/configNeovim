-- Tecla leader, ahora se usara la barra espaciadora.
vim.g.mapleader = " "

-- Habilita el color RGB de 24 bits en la TUI. Usa "gui": resaltar atributos en lugar de atributos "cterm". guifg Requiere un terminal compatible con ISO-8613-3
vim.opt.termguicolors = true

-- al dividir ventana coloca la nueva ventana a la derecha de la actual
vim.opt.splitright = true

-- Resalte la línea de texto del cursor con CursorLine hl-CursorLine. Útil para detectar fácilmente el cursor. Hará que el redibujado de la pantalla sea más lento. Cuando el modo Visual está activo, el resaltado no se usa para hacerlo. más fácil ver el texto seleccionado.
vim.opt.cursorline = true

--Mostar numeros de linea de codigo
vim.opt.number = true
vim.opt.relativenumber = true


-- IDENTACION

-- En el modo Insertar: utilice el número adecuado de espacios para insertar un <Tab>.
vim.opt.expandtab = true

-- Número de espacios que cuenta una <Tab> al realizar la edición operaciones, como insertar una <Tab> o usar <BS>.
vim.opt.softtabstop = 2

-- Número de espacios a usar para cada paso de (auto) sangría. Usado para 'cindente', >>, <<, etc.
vim.opt.shiftwidth = 2

-- Realice una sangría automática inteligente al comenzar una nueva línea.
vim.opt.smartindent = true

-- Esta opción cambia la forma en que se muestra el texto. no cambia el texto en el búfer, vea 'textwidth' para eso. Cuando está activado, las líneas más largas que el ancho de la ventana se ajustarán y la visualización continúa en la línea siguiente. Cuando las líneas fuera de línea no se ajustan y solo se mostrará una parte de las líneas largas. Cuando el cursor está movido a una parte que no se muestra, la pantalla se desplazará horizontalmente.
vim.opt.wrap = false



-- highlight matching parenthesis

-- Cuando se inserta un corchete, salte brevemente al correspondiente. El el salto solo se realiza si el match se puede ver en la pantalla. el tiempo de mostrar el Match se puede configurar con 'matchtime'. Se emite un pitido si no hay ninguna Match (no importa si el match se puede ver o no).
vim.opt.showmatch = true


-- Ignorar mayúsculas y minúsculas en los patrones de búsqueda. También se utiliza al buscar en el archivo de etiquetas.
vim.opt.ignorecase = true

-- Anule la opción 'ignorecase' si el patrón de búsqueda contiene caracteres en mayúsculas. Solo se usa cuando se escribe el patrón de búsqueda y la opción 'ignorecase' está activada. Se utiliza para los comandos "/", "?", "n", "N", ":g" y ":s". No se usa para "*", "#", "gd", búsqueda de etiquetas, etc. Después de "*" y "#" puede usar 'smartcase' haciendo un comando "/", recuperando el patrón de búsqueda del historial y pulsando <Enter>.
vim.opt.smartcase = true


-- Cuando no está vacío, muestra los efectos de :substitute, :smagic, :snomagic y comandos de usuario con el indicador :command-preview a medida que escribe.
-- split = Como "nosplit", pero también muestra resultados parciales fuera de la pantalla en una ventana de vista previa.
vim.opt.inccommand = "split"

-- Habilita la compatibilidad con el mouse. 
-- Para deshabilitar temporalmente la compatibilidad con el mouse, mantenga presionada la tecla Mayús mientras usa el ratón.
-- Mouse support can be enabled for different modes:
-- a = En todos los modos
vim.opt.mouse = "a"


-- use native clipboard con +
vim.opt.clipboard = "unnamedplus"


-- Haga una copia de seguridad antes de sobrescribir un archivo. Déjalo después de la el archivo se ha escrito con éxito

vim.opt.backup = false

-- Toque el timbre (pitido o flash de pantalla) para mensajes de error.
vim.opt.errorbells = false

-- Utilice un swapfile para el búfer.
vim.opt.swapfile = false

-- simpre mostar signcolumns
vim.opt.signcolumn = "yes"



-- Autocompilar packer al guardar el archivo packer.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerCompile
  augroup end
]])
