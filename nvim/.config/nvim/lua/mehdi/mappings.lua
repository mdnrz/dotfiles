vim.g.mapleader = " "
vim.keymap.set("n", "-", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")

vim.keymap.set("n", "-", "<cmd>Oil<CR>")

-- print the date in current buffer
vim.keymap.set("n", "<leader>n", "Go<Esc>:r!date<cr>0i## <Esc>o"--[[ :r!echo $(date)<cr>0i## <Esc>o" ]], opts)
