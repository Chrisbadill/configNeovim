-- Only required if you have packer configured as `opt`
-- Solo se requiere si tiene packer configurado como `opt`

vim.cmd.packadd("packer.nvim")
return require("packer").startup(function(use)
  -- Administrador Packetes
  -- Packer se puede administrar a si mismo.
  use("wbthomason/packer.nvim")

  -- colorscheme
  -- esquemas de color

  use({ "folke/tokyonight.nvim", as = "tokyonight" })


  -- Resaltado de codigo , para detectar la sintaxis de los lenguages de programacion

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- LSP-ZERO autocompletado
  -- Incluye mason como herramienta para intalar servidor de idiomas
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },           -- Required
      { 'williamboman/mason.nvim' },         -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },       -- Required
      { 'hrsh7th/cmp-nvim-lsp' },   -- Required
      { 'hrsh7th/cmp-buffer' },     -- Optional
      { 'hrsh7th/cmp-path' },       -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' },   -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },           -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }
end)
