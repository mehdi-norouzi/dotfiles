return require('packer').startup(
    function(use)
        -- packer
        use 'wbthomason/packer.nvim'

        -- lsp
        use 'neovim/nvim-lspconfig'


        -- colorschemes
        use 'folke/tokyonight.nvim'
        use 'sainnhe/gruvbox-material'
        use { "ellisonleao/gruvbox.nvim" }
        use { "catppuccin/nvim", as = "catppuccin" }
        use { 'tjdevries/colorbuddy.vim' }
        use { 'avi-2-avi/catbuddy.nvim' }

        use({
            'rose-pine/neovim',
            as = 'rose-pine',
            config = function()
                vim.cmd('colorscheme rose-pine')
            end
        })


        -- telescope
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.0',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }
        use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
        use { "nvim-telescope/telescope-file-browser.nvim" }
        use { 'kyazdani42/nvim-web-devicons' }

        use {
            'VonHeikemen/lsp-zero.nvim',
            requires = {
                -- LSP Support
                {'neovim/nvim-lspconfig'},
                {'williamboman/mason.nvim'},
                {'williamboman/mason-lspconfig.nvim'},

                -- Autocompletion
                {'hrsh7th/nvim-cmp'},
                {'hrsh7th/cmp-buffer'},
                {'hrsh7th/cmp-path'},
                {'saadparwaiz1/cmp_luasnip'},
                {'hrsh7th/cmp-nvim-lsp'},
                {'hrsh7th/cmp-nvim-lua'},

                -- Snippets
                {'L3MON4D3/LuaSnip'},
                -- Snippet Collection (Optional)
                {'rafamadriz/friendly-snippets'},
            }
        }

        -- comment
        use { 'numToStr/Comment.nvim' }

        -- dap
        use { 'mfussenegger/nvim-dap' }
        use { 'rcarriga/nvim-dap-ui' }
        use { 'ravenxrz/DAPInstall.nvim' }

        -- treesitter
        use("nvim-treesitter/nvim-treesitter", {
            run = ":TSUpdate"
        })
        use { "nvim-treesitter/nvim-treesitter-context" }

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

        -- goyo
        use { 'junegunn/goyo.vim' }

        -- git stuff
        use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
        use { 'kdheepak/lazygit.nvim' }

        -- harpoon
        use { "ThePrimeagen/harpoon" }

        -- reach
        use { "toppair/reach.nvim" }

        -- gitsigns
        use { 'lewis6991/gitsigns.nvim' }
    end)
