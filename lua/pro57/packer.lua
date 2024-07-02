-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use ('wbthomason/packer.nvim')

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-ui-select.nvim'},
        }
    }

    -- Treesitter, Harpoon, Undotree
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('mbbill/undotree')

    -- Color Schemes
    use {
        {'rakr/vim-one'},
        {'catppuccin/nvim', as = 'catppuccin' },
        {'pappasam/papercolor-theme-slim'},
        {'folke/tokyonight.nvim'},
        {'kaicataldo/material.vim'},
        {'nyoom-engineering/oxocarbon.nvim'},
    }

    -- LSP-Zero
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
            {'onsails/lspkind.nvim'},
            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},

            -- Status for LSP
            {'j-hui/fidget.nvim'},
        }
    }

    -- Better Navigation
    use ('ggandor/leap.nvim')

    -- Git related plugins
    use {
        {'tpope/vim-fugitive'},
        {'tpope/vim-rhubarb'},
        {'lewis6991/gitsigns.nvim'},
    }

    -- Kickstart Additions
    use {
        {'nvim-lualine/lualine.nvim'}, -- Fancier Statusline
        {'lukas-reineke/indent-blankline.nvim'}, -- Add indentation guides even on blank lines
        {'numToStr/Comment.nvim'}, -- "gc" to comment visual regions/lines
        {'tpope/vim-sleuth'}, -- Detect tabstop and shiftwidth automatically
        -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
        { 'nvim-telescope/telescope-fzf-native.nvim',
          run = 'make', cond = vim.fn.executable 'make' == 1 
        }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    }

    -- Doesn't work in neovim
    -- use ('tpope/vim-surround')
end)
