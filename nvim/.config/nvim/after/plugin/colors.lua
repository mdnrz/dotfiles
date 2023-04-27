vim.g.mehdi_colorscheme = "gruvbox-material"

require('rose-pine').setup({
    disable_background = true
})

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

end
ColorMyPencils()




