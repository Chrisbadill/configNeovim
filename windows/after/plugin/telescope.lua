local builtin = require("telescope.builtin")

-- cuando se usa contro + p se abre telescope
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
