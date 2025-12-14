
vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("i", "jk", "<Esc>", {})

vim.keymap.set("n", "<leader>c", ":Compile<C-F>")
vim.keymap.set("n", "<leader>r", ":Recompile<CR>")
vim.keymap.set("n", "<C-F>", ":silent !tmux neww sessionizer<CR>")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "man",
  callback = function()
    local opts = { buffer = true, noremap = true, silent = true }
    vim.keymap.set("n", "d", "<C-d>", opts)
    vim.keymap.set("n", "u", "<C-u>", opts)
  end,
})

-- :lua print(table.concat(vim.fn.argv(), "\n"))
vim.keymap.set("n", "<leader>a", function() vim.cmd("argadd %") vim.cmd("argdedup") end)
vim.keymap.set("n", "<leader>l",function() vim.cmd.args() end)
vim.keymap.set("n", "<C-h>", function() vim.cmd("silent! 1argu") end)
vim.keymap.set("n", "<C-j>", function() vim.cmd("silent! 2argu") end)
vim.keymap.set("n", "<C-k>", function() vim.cmd("silent! 3argu") end)
vim.keymap.set("n", "<C-l>", function() vim.cmd("silent! 4argu") end)

