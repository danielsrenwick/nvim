local M = {}

local function bind(mode, outer_opts)
	return function(lhs, rhs, opts)
		opts = vim.tbl_extend("force", {}, outer_opts or {}, opts or {})
		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

M.nmap = bind("n", {noremap = false})
M.nnoremap = bind("n")
M.vnoremap = bind("v")
M.xnoremap = bind("x")
M.inoremap = bind("i")

M.local_nnoremap = bind("n", {buffer = 0})
M.local_vnoremap = bind("v", {buffer = 0})
M.local_inoremap = bind("i", {buffer = 0})

return M
