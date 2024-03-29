-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'nvim-tree/nvim-web-devicons'

    -- ansible support
    use 'pearofducks/ansible-vim'

    -- Automatically closes brackets and quotes
    use 'm4xshen/autoclose.nvim'

    -- Smooth scrolling
    use 'karb94/neoscroll.nvim'

    -- install and upgrade third party tools automatically
    use({
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        requires = { 'williamboman/mason.nvim' },
    })

    use "nvimtools/none-ls.nvim"

    -- extension to mason.nvim that makes it easier
    -- to use lspconfig with mason.nvim
    use({
        'williamboman/mason-lspconfig.nvim',
        requires = {
            'williamboman/mason.nvim',
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'simrat39/rust-tools.nvim',
        },
        after = {
            'nvim-lspconfig',
            'nvim-cmp',
        },
    })

    use({
        'j-hui/fidget.nvim',
        requires = {
            'neovim/nvim-lspconfig',
        },
        opts = {},
    })

    -- Media support
    use { 'edluffy/hologram.nvim' }

    -- press leader for showing the next steps
    use "folke/which-key.nvim"

    -- Lsp-based format for code
    use { "elentok/format-on-save.nvim" }

    -- comment support
    use { 'numToStr/Comment.nvim' }

    -- Alpha-nvim provides a customizable start screen for neovim
    use {
        'goolord/alpha-nvim',
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end
    }

    -- Lualine, a statusline plugin that's easy to configure and customize
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Telescope, a highly extendable fuzzy finder over lists
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- ToggleTerm, for easy management of terminal windows within Neovim
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    -- Nvim-tree, a file explorer tree for navigating the filesystem
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    -- Helm support
    use('towolf/vim-helm')

    -- Rose-pine theme, a comfortable and easy-on-the-eyes color scheme
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- Nvim-treesitter, for syntax highlighting, indentation, and more, based on tree-sitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- Harpoon, for quick navigation to files, buffers, etc.
    use('theprimeagen/harpoon')

    -- Undotree, for visualizing vim's undo tree
    use('mbbill/undotree')

    -- Vim-fugitive, a Git wrapper that adds many Git commands to Neovim
    use('tpope/vim-fugitive')

    -- barbar, for bufferline
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'

    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua' -- recommended if need floating window support

    -- LSP-Zero, an easy-to-setup configuration for Neovim LSP (Language Server Protocol)
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
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
            { 'rafamadriz/friendly-snippets' },
        }
    }
end)
