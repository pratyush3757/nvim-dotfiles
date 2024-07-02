-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- remap toggle key
vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeToggle)

-- empty setup using defaults
require("nvim-tree").setup()
