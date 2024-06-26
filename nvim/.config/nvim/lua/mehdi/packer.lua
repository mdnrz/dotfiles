return require('packer').startup(
    function(use)
        -- packer
        use 'wbthomason/packer.nvim'

        -- lsp
        use 'neovim/nvim-lspconfig'


        -- colorschemes
        use { 'sainnhe/gruvbox-material' }
        use { 'rockerBOO/boo-colorscheme-nvim' }
        use { 'savq/melange-nvim' }
        use { 'fxn/vim-monochrome' }
        use { 'blazkowolf/gruber-darker.nvim' }
        use { 'amedoeyes/eyes.nvim' }
        use { 'phha/zenburn.nvim' }




        -- telescope
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.4',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }
        use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
        use { "nvim-telescope/telescope-file-browser.nvim" }
        use { 'kyazdani42/nvim-web-devicons' }

        use {
            'VonHeikemen/lsp-zero.nvim',
            requires = {
                -- LSP Support
                { 'neovim/nvim-lspconfig' },
                { 'williamboman/mason.nvim' },
                { 'williamboman/mason-lspconfig.nvim' },

                -- Autocompletion
                { 'hrsh7th/nvim-cmp' },
                { 'hrsh7th/cmp-buffer' },
                { 'hrsh7th/cmp-path' },
                { 'saadparwaiz1/cmp_luasnip' },
                { 'hrsh7th/cmp-nvim-lsp' },
                { 'hrsh7th/cmp-nvim-lua' },

                -- Snippets
                { 'L3MON4D3/LuaSnip' },
                -- Snippet Collection (Optional)
                { 'rafamadriz/friendly-snippets' },
            }
        }

        -- comment
        use { 'numToStr/Comment.nvim' }

        -- undotree
        use { 'mbbill/undotree' }

        -- vimwiki
        use { 'vimwiki/vimwiki' }

        -- lualine
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

        -- toggleterm
        use { "akinsho/toggleterm.nvim", tag = '*', config = function()
            require("toggleterm").setup()
        end }

        -- git stuff
        use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
        use { 'tpope/vim-fugitive' }
        use { 'tpope/vim-unimpaired' }

        -- harpoon
        use { "ThePrimeagen/harpoon" }

        -- nodev
        use { 'folke/neodev.nvim', opts = {} }

        -- git-worktree
        use { 'ThePrimeagen/git-worktree.nvim' }

        -- Oil 
            use({
                "stevearc/oil.nvim",
                config = function()
                    require("oil").setup()
                end,
            })
        -- use { 'stevearc/oil.nvim' }


    end)
