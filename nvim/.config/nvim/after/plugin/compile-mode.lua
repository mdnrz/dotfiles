require("compile-mode").setup({
    buffer_name = "*compilation*",
    default_command = "make -k",
    time_format = "%a %b %e %H:%M:%S",
    ask_about_save = true,
    ask_to_interrupt = true,
    baleia_setup = true,
})
--
--
---@type CompileModeOpts
-- vim.g.compile_mode = {
--     buffer_name = "*compilation*",
--     default_command = "make -k",
--     time_format = "%a %b %e %H:%M:%S",
--     ask_about_save = true,
--     ask_to_interrupt = true,
--     baleia_setup = true, -- only works if you have baleia.nvim installed
    -- bang_expansion = true, -- optional: acts more like `:!`
-- }

