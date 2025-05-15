vim.g.mapleader = " "
vim.keymap.set("n", "-", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")

vim.keymap.set("n", "-", "<cmd>Oil<CR>")

-- print the date in current buffer
vim.keymap.set("n", "<leader>n", "Go<Esc>:r!date<cr>0i## <Esc>o"--[[ :r!echo $(date)<cr>0i## <Esc>o" ]], opts)

-- Focus on a window by its name
function FocusWindowByName(name)
    vim.cmd("Recompile");
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
vim.cmd('command! RecompileAndFocus lua FocusWindowByName("compilation")')
vim.keymap.set('n', '<leader>r', ':RecompileAndFocus<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>c", ":Compile<C-F>")
vim.keymap.set("n", "<C-F>", ":silent !tmux neww sessionizer<CR>")

-- DAP
vim.keymap.set("n", "<leader>b", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<space>gb", "<cmd>lua require'dap'.run_to_cursor()<CR>")
-- Eval var under cursor
vim.keymap.set("n", "<space>?", function()
    require("dapui").eval(nil, { enter = true })
end)
vim.keymap.set("n", "<F1>", "<cmd>lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F2>", "<cmd>lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<F3>", "<cmd>lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<F4>", "<cmd>lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<F5>", "<cmd>lua require'dap'.step_back()<CR>")
vim.keymap.set("n", "<F13>", "<cmd>lua require'dap'.restart()<CR>")
