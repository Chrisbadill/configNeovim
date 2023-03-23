-- Tecla leader, ahora se usara la barra espaciadora.
vim.g.mapleader = " "


-- Autocompilar packer al guardar el archivo packer.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerCompile
  augroup end
]])
