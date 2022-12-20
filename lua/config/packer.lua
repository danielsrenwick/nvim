return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use { "catppuccin/nvim", as = "catppuccin" }

    use {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
        },
    }

    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

    use "mbbill/undotree"

    use "folke/which-key.nvim"

    use {
        "TimUntersberger/neogit",
        cmd = "Neogit",
    }

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    }

    use "nvim-lualine/lualine.nvim"

    use {
        'VonHeikemen/lsp-zero.nvim',
        after = "nvim-treesitter",
        requires = {
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use {
        "windwp/nvim-ts-autotag",
        config = function() require("nvim-ts-autotag").setup {} end
    }

    use {
        "petertriho/nvim-scrollbar",
        config = function() require("scrollbar").setup {} end,
        requires = {
            {
                "lewis6991/gitsigns.nvim",
                config = function() require("gitsigns").setup {} end,
            },
            "kevinhwang91/nvim-hlslens",
        },
    }

    use {
        "mcauley-penney/tidy.nvim",
        config = function() require("tidy").setup {} end,
    }

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function() require("todo-comments").setup {} end,
    }

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require("trouble").setup {} end,
    }

    use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup {} end,
    }

    use {
        "kylechui/nvim-surround",
        tag = "*",
        config = function() require("nvim-surround").setup {} end,
    }
end)
