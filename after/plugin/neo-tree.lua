local ok, neotree = pcall(require, "neo-tree")

if not ok then
	return
end

local conf = {
    close_if_last_window = true,
}

neotree.setup(conf)
