require("gitsigns").setup()
require("config.packer")
require("config.remaps")
require("config.set")

local augroup = vim.api.nvim_create_augroup
config_group = augroup("config", {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd("TextYankPost", {
    group = yank_group,
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 40,
        })
    end,
})

autocmd({"BufEnter", "BufWinEnter", "TabEnter"}, {
    group = config_group,
    pattern = "*.rs",
    callback = function()
        require("lsp_extensions").inlay_hints{}
    end
})

autocmd({"BufWritePre"}, {
    group = config_group,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

vim.cmd.colorscheme "catppuccin-mocha"
