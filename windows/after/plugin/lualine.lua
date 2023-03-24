require("lualine").setup({
  options = {
    theme = "auto",
    section_separators = '',
    component_separators = ''
  },
  sections = {
    lualine_a = {
      { 'mode',  right_padding = 2 },
    },
    lualine_b = {
      {
        "filename",
      },
    },
    lualine_c = {
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        symbols = { error = "X ", warn = "! ", info = "I ", hint = "? " },
      },
    },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location',  left_padding = 2 },
    },
  },
})
