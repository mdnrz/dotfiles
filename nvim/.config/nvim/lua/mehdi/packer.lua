vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { "rose-pine/neovim", name = "rose-pine" }

    use { "blazkowolf/gruber-darker.nvim" }

    use({
        "stevearc/oil.nvim",
        config = function()
            require("oil").setup()
        end,
    })

    use { 'nvim-tree/nvim-web-devicons' }

    use { 'fxn/vim-monochrome' }

    use { 'sainnhe/gruvbox-material' }
    use { 'slugbyte/lackluster.nvim' }
    use { "polirritmico/monokai-nightasty.nvim" }

    use { 'tpope/vim-fugitive' }

    use { 'vimwiki/vimwiki' }

    use { 'ej-shafran/compile-mode.nvim',
    requires = { { 'nvim-lua/plenary.nvim' },
            { 'm00qek/baleia.nvim', tag = "v1.3.0" }},
    }

end)

