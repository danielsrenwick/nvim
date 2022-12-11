local ok, telescope = pcall(require, "telescope")

if not ok then
	return
end

local nnoremap = require("config.keymap").nnoremap

telescope.setup()
telescope.load_extension("fzf")
