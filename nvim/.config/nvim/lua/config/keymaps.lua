
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("i", "jk", "<Esc>", {})

-- Focus on a window by its name
function FocusWindowByName(name)
    vim.cmd("Recompile")
    for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
        local buf = vim.api.nvim_win_get_buf(win)
        local bufname = vim.api.nvim_buf_get_name(buf)
        if bufname:match(name) then
            vim.api.nvim_set_current_win(win)
            return
        end
    end
    print("No window found with name: " .. name)
end

-- Run :Recompile and focus on the "compilation" pane
-- vim.cmd('command! RecompileAndFocus lua FocusWindowByName("compilation")')
-- vim.keymap.set('n', '<leader>r', ':RecompileAndFocus<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>c", ":Compile<C-F>")
vim.keymap.set("n", "<leader>r", ":Recompile<CR>")
vim.keymap.set("n", "<C-F>", ":silent !tmux neww sessionizer<CR>")


