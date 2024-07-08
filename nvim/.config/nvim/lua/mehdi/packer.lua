vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
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

    use {'kdheepak/monochrome.nvim'}

    use { 'sainnhe/gruvbox-material' }
    use { 'slugbyte/lackluster.nvim' }
    use { "polirritmico/monokai-nightasty.nvim" }

    use { 'tpope/vim-fugitive' }


end)

