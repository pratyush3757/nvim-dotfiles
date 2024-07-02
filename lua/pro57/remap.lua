-- Line movement auto-indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in the middle on scroll
vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy paste
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete without yanking
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- control-c like escape
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", function()
   vim.lsp.buf.format()
end)

-- Change word under cursor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Window selection
vim.keymap.set("n", ";", "<C-w>")

-- Escape remap
vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("v", "kj", "<Esc>")
vim.keymap.set("c", "kj", "<C-c>")

-- Selection parentheses and quotes
vim.keymap.set("x", "<leader>(", "<ESC>`>a)<ESC>`<i(<ESC>")
vim.keymap.set("x", "<leader>[", "<ESC>`>a]<ESC>`<i[<ESC>")
vim.keymap.set("x", "<leader>{", "<ESC>`>a}<ESC>`<i{<ESC>")
vim.keymap.set("x", "<leader>'", "<ESC>`>a'<ESC>`<i'<ESC>")
vim.keymap.set("x", "<leader>\"", "<ESC>`>a\"<ESC>`<i\"<ESC>")

-- Auto-parenthesis
vim.keymap.set("i", "(", "()<left>")
vim.api.nvim_set_keymap('i', ')', [[ strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")" ]], {noremap=true,expr=true})
vim.keymap.set("i", "[", "[]<left>")
vim.api.nvim_set_keymap('i', ']', [[ strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]" ]], {noremap=true,expr=true})
vim.keymap.set("i", "{", "{}<left>")
vim.api.nvim_set_keymap('i', '}', [[ strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}" ]], {noremap=true,expr=true})
vim.keymap.set("i", "{<CR>", "{<CR>}<ESC>O")
vim.keymap.set("i", "{;<CR>", "{<CR>};<ESC>O")

vim.api.nvim_set_keymap('i', '\'', [[ strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>" ]], {noremap=true,expr=true})
vim.api.nvim_set_keymap('i', '\"', [[ strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>" ]], {noremap=true,expr=true})

