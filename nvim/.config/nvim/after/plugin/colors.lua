vim.g.mehdi_colorscheme = "monochrome"

--[[ require('rose-pine').setup({
    disable_background = true
}) ]]

-- require('tokyonight').setup({
--     style = "night",
--     transparent = true,
--     terminal_colors = true,
--     dim_inactive = true,
--     on_highlights = function(hl, c)
--         -- local prompt = "2d3149"
--         hl.TelescopeNormal = {
--             bg = c.bg_dark,
--             fg = c.fg_dark,
--         }
--         hl.TelescopeBorder = {
--             bg = c.bg_dark,
--             fg = c.bg_dark,
--         }
--         hl.TelescopePromptNormal = {
--             bg = bg_none,
--         }
--         -- hl.TelescopePromptBorder = {
--         --     bg = prompt,
--         --     fg = prompt,
--         -- }
--         -- hl.TelescopePromptTitle = {
--         --     bg = prompt,
--         --     fg = prompt,
--         -- }
--         hl.TelescopePreviewTitle = {
--             bg = c.bg_dark,
--             fg = c.bg_dark,
--         }
--         hl.TelescopeResultsTitle = {
--             bg = c.bg_dark,
--             fg = c.bg_dark,
--         }
--     end,
-- })
function ColorMyPencils()
    vim.g.gruvbox_contrast_dark = 'hard'
    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_transparent = true
    vim.g.gruvbox_invert_selection = '0'
    vim.opt.background = "dark"

    vim.g.gruvbox_material_transparent_background = 1

    vim.cmd("colorscheme " .. vim.g.mehdi_colorscheme)

    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    hl("SignColumn", {
        bg = "none",
    })

    hl("ColorColumn", {
        ctermbg = 0,
        bg = "#555555",
    })

    hl("CursorLineNR", {
        bg = "None"
    })

    hl("Normal", {
        bg = "none"
    })

    hl("LineNr", {
        -- fg = "#5eacd3"
        fg = "#b7a6a4"
    })

    hl("netrwDir", {
        fg = "#5eacd3"
    })

    hl("NormalFloat", {
        bg = "none"
    })

    hl("Pmenu", {
        bg = "none"
    })

    hl("FloatBorder", {
        bg = "#a0a0a0",
        fg = "#ffffff"
    })
end

ColorMyPencils()
