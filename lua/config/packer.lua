return require("packer").startup(function(use)
	-- Packer can manage itself
	use "wbthomason/packer.nvim"

	-- Colourscheme
	use { "catppuccin/nvim", as = "catppuccin" }

	-- Telescope
	use "nvim-lua/plenary.nvim"
	use "nvim-telescope/telescope.nvim"
    use {
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make"
    }

    -- Whichkey
    use "folke/which-key.nvim"

    -- Neogit
    use {
        "TimUntersberger/neogit",
        cmd = "Neogit",
    }

    -- Nvim-tree
    use "MunifTanjim/nui.nvim"
    use "nvim-tree/nvim-web-devicons"
    use "nvim-neo-tree/neo-tree.nvim"
end)
