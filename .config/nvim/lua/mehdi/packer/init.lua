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

        -- telescope
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.0',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }
        use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
        use { "nvim-telescope/telescope-file-browser.nvim" }
        use { 'kyazdani42/nvim-web-devicons' }

        -- completion
        use { 'hrsh7th/nvim-cmp' }
        use { 'hrsh7th/cmp-nvim-lsp' }
        use { 'hrsh7th/cmp-buffer' }
        use { 'hrsh7th/cmp-path' }
        use { 'L3MON4D3/LuaSnip' }
        use { 'saadparwaiz1/cmp_luasnip' }

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
